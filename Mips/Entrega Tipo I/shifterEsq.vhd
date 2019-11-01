library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifterEsq is 

	generic(
		dataW : natural := 32;
		nshift : natural := 2
	);
	port(
		a : IN std_logic_vector(dataW-1 DOWNTO 0);
		b : OUT std_logic_vector(dataW-1 DOWNTO 0)
	);
	
end entity;

architecture arch_shifter of shifterEsq is

signal conc : std_logic_vector(nshift-1 DOWNTO 0);

begin
	conc <= (OTHERS => '0');
	b <= a(dataW-1-2 DOWNTO 0) & (conc);
	
end arch_shifter;

