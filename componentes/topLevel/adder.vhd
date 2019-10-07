library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
	generic
	(
		DATA_WIDTH: natural := 8
	);
	port
	(
		cin : in std_logic_vector(DATA_WIDTH-1 DOWNTO 0);
		cout : out std_logic_vector(DATA_WIDTH-1 DOWNTO 0)
	);
end adder;

architecture arch_adder of adder is

begin
	cout <= std_logic_vector(to_unsigned(to_integer(unsigned( cin )) + 1, 8));

end arch_adder;