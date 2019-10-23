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

	outData <= std_logic_vector(unsigned(inB) + "0001") when sel = "000" else
				  "0000";
				  
	flag <= '1' when (sel = "010" AND inA = inB) else
			  '0';

end architecture;