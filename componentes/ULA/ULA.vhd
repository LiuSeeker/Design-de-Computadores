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
				sel  : in std_logic_vector(3 downto 0);
				
				outData : out std_logic_vector(DATA_WIDTH downto 0);
				outFlagZero : out std_logic
	);
end entity;


architecture ulaula of ula is
		
begin

	processo: process(inA, inB, sel)
	begin

		if(sel = "0000") then --inc (soma 1 no valor do reg)
			outData <= inA + "00000001";
			outFlagZero <= '0';

		elsif(sel = "0001") then --din (subtrai 1 no valor do reg)
			if(inA = "00000000" or inA = "00000001")then
				outFlagZero <= '1';
				outData <= "00000000";
			else				
				outData <= inA - "00000001";
				outFlagZero <= '0';
			end if;
				
		elsif(sel = "0010") then --cmp (compara se os dois valores são iguais)
			outData <= "00000000";
			if(inA = inB) then
				outFlagZero <= '1';
			else
				outFlagZero <= '0';
			end if;

		elsif(sel = "0011") then --div (divide o valor do registrador por 2)
			if(inA = "00000000" or inA = "00000001")then --se os valores sendo divididos forem 0 ou 1, aciona a FlagZero
				outFlagZero <= '1';
				outData <= "00000000";
				
			else
				outFlagZero <= '0';				
				outData(0) <= inA(1);
				outData(1) <= inA(2);
				outData(2) <= inA(3);
				outData(3) <= inA(4);
				outData(4) <= inA(5);
				outData(5) <= inA(6);
				outData(6) <= inA(7);
				outData(7) <= '0';		
			end if;
			
		else
			outData <= inB;
			outFlagZero <= '0';

		end if;
	end process processo;
end architecture;