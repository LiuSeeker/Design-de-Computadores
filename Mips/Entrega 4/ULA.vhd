library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity ula is
	generic
	(
		DATA_WIDTH : natural := 32
	);

	port ( 
				inA  : in std_logic_vector(DATA_WIDTH-1 downto 0);
				inB  : in std_logic_vector(DATA_WIDTH-1 downto 0);
				sel  : in std_logic;
				
				outData : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity;


architecture ulaula of ula is
begin

	outData <= std_logic_vector(unsigned(inB) + unsigned(inA)) when sel = '0' else
				  std_logic_vector(unsigned(inA) - unsigned(inB)) when sel = '1' else
				  "00000000000000000000000000000000";
				  
end architecture;