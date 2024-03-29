library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
	port
	(
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		
		s : out std_logic;
		cout : out std_logic
	);
end adder;

architecture arch_adder of adder is

begin
	s <= cin XOR (a XOR b);
	cout <= (a AND b) OR (cin AND (a XOR b));

end arch_adder;