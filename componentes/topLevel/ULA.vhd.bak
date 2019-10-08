library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity ula is
	
	generic
	(
		DATA_WIDTH : natural := 4
	);

	port ( 
				inA  : in std_logic_vector(DATA_WIDTH-1 downto 0);
				inB  : in std_logic_vector(DATA_WIDTH-1 downto 0);
				sel  : in std_logic_vector(2 downto 0);
				
				outData : out std_logic_vector(DATA_WIDTH-1 downto 0);
				flag : out std_logic
	);
end entity;


architecture ulaula of ula is
begin

	outData <= std_logic_vector(unsigned(inA) + "0001") when sel = "000" else
				  "0000" when sel = "010" OR sel = "101" OR sel = "110" OR sel = "111";
				  
	flag <= '1' when (sel = "010" AND inA = inB) OR sel = "110" else
			  '0';
				  
	--processo: process(inA, inB, sel)
	--begin

--		if(sel = "000") then --inc (soma 1 no valor do reg) # definir onde entrar 
--			outData <= std_logic_vector(unsigned(inA) + "0001");
--			flag <= '0';

--		elsif(sel = "001") then --inc2
--			flag <= '0';
			
--		elsif(sel = "010") then --cmp (compara imediato com registrador) ##################OLHAR
--			outData <= "0000";
			
--			if(inA = inB) then
--				flag <= '1';
--			else
--				flag <= '0';  
--			end if;

--		elsif(sel = "011") then --passA
--			outData <= inA;
--			flag <= '0';
--		
--		elsif(sel = "100") then --passB
--			outData <= inB;
--			flag <= '0';
--		
--		elsif(sel = "101") then --pass (ignora entrada)
--			outData <= "0000";
--			flag <= '0';
--		
--		elsif(sel = "110") then --JMP (flag = 1)
--			outData <= "0000";
--			flag <= '1';
--			
--		else -- (111) JMP NOT ZERO, mantem flag do compare
--			outData <= "0000";

--		end if;
--		end process processo;
end architecture;