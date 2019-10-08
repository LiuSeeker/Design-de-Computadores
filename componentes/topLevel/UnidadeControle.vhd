library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity UnidadeControle is
	port ( 
				opcode  : in std_logic_vector(3 downto 0);
				
				outULA: out std_logic_vector(2 downto 0);
				outMuxPosULA : out std_logic;
				outBancoRegistradores : out std_logic; -- 0 Read / 1 Write
				outJzn : out std_logic;
				outDemux : out std_logic;
				outJmp : out std_logic
	);
end entity;



architecture UC of UnidadeControle is


constant INC : std_logic_vector(3 downto 0) := "0100";
constant CMP : std_logic_vector(3 downto 0) := "0010";
constant JNZ : std_logic_vector(3 downto 0) := "0011";


begin



	outULA <= "101" when opcode = "0000" OR opcode = "0110" else
				 "011" when opcode = "0001" OR opcode = "0111" else
				 "010" when opcode = CMP else
				 "000" when opcode = INC else
				 "001" when opcode = "0101" else "100";
					
	outMuxPosULA <= '1' when opcode = "0000" else
						 '0';
						 
	outBancoRegistradores <= '1' when opcode = "0000" OR opcode = "0001" OR opcode = INC OR opcode = "0111" else
									 '0';
									 
	outJzn <= '1' when opcode = "0011" else
					'0';
					
	outDemux <= '1' when opcode = "0110" else
					'0';
	
	outJmp <= '1' when opcode = "1000" else '0';
					
	--processo: process(opcode)
	--begin

	--	if(opcode = "0000") then -- RXD (Periférico -> Registrador)
	--		outULA <= "101";
	--		outMuxPosULA <= '1';
	--		outBancoRegistradores <= '1';
	--		outAndPC <= '0';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "0001") then -- ZER (Registrador = 0)
	--		outULA <= "011";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '1';
	--		outAndPC <= '0';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "0010") then -- CMP (Compara Registrador com Imediato)
	--		outULA <= "010";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '0';
	--		outAndPC <= '0';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "0011") then -- JNZ (Jump not zero)
	--		outULA <= "111";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '0';
	--		outAndPC <= '1';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "0100") then -- INC1 (Incrementa 1 no valor	recebido)
	--		outULA <= "000";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '0';
	--		outAndPC <= '0';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "0101") then -- INC2 (Continuação do INC1, para atualizar o clock e poder escrever no banco)
	--		outULA <= "001";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '1';
	--		outAndPC <= '0';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "0110") then -- WRT (Escreve do Registrador para o Periférico)
	--		outULA <= "101";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '0';
	--		outAndPC <= '0';
	--		outDemux <= '1';
	--	
	--	elsif (opcode = "0111") then -- LDI (Carrega o Imediato no Registrador)
	--		outULA <= "011";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '1';
	--		outAndPC <= '0';
	--		outDemux <= '0';
	--	
	--	elsif (opcode = "1000") then -- JMP (Jump)
	--		outULA <= "110";
	--		outMuxPosULA <= '0';
	--		outBancoRegistradores <= '0';
	--		outAndPC <= '1';
	--		outDemux <= '0';
	--		
	--	end if;
	-- end process processo;
end architecture;