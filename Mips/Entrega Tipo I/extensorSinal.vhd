library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extensorSinal is
	generic (
		DATA_WIDTH : natural := 16
	);

	port (
		A  : IN std_logic_vector((DATA_WIDTH-1) DOWNTO 0);
	
		B : OUT std_logic_vector((DATA_WIDTH*2-1) DOWNTO 0)
	);
end entity;

architecture arch_extensorSinal of extensorSinal is
	signal sign : std_logic_vector((DATA_WIDTH-1) DOWNTO 0);
begin
	sign <= (OTHERS => A((DATA_WIDTH-1)));
	B <= sign & A;
end architecture;