library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
 
entity ula is
	
	generic
	(
		DATA_WIDTH : natural := 7
	);

	port ( 
				inA  : in std_logic_vector(DATA_WIDTH downto 0);
				inB  : in std_logic_vector(DATA_WIDTH downto 0);
				sel  : in std_logic_vector(2 downto 0);
				
				outData : out std_logic_vector(DATA_WIDTH downto 0);
				flag : out std_logic
	);
end entity;


architecture ulaula of ula is
begin

	processo: process(inA, inB, sel)
	begin

		if(sel = "000") then --inc (soma 1 no valor do reg) # definir onde entrar 
			outData <= inA + "00000001";
			flag <= '0';

		elsif(sel = "001") then --inc2
			flag <= 0;
			
		elsif(sel = "010") then --cmp (compara imediato com registrador) ##################OLHAR
			outData <= "00000000";
			
			if(inA = inB) then
				flag <= '1';
			else
				flag <= '0';  
			end if;

		elsif(sel = "011") then --passA
			outData <= inA;
			flag <= '0';
		
		elsif(sel = "100") then --passB
			outData <= inB;
			flag <= '0';
		
		elsif(sel = "101") then --pass (ignora entrada)
			outData <= "00000000";
			flag <= '0';
		
		elsif(sel = "110") then --JMP (flag = 1)
			outData <= "00000000";
			flag <= '1';
			
		else -- (111) JMP NOT ZERO, mantem flag do compare
			outData <= "00000000";

		end if;
	end process processo;
end architecture;