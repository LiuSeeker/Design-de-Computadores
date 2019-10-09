library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador1bitr is

	port
	(
		d : in std_logic;
		clk : in std_logic;
		reset: in std_logic;
		q : out std_logic
	);
end registrador1bitr;


architecture arch_registrador of registrador1bitr is

signal qSig : std_logic;

begin


	q <= '0' when reset = '1'
			else '1' when reset = '0' AND clk = '1';
		


end arch_registrador;