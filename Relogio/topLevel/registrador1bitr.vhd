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

process (clk, reset)
begin
	-- Reset whenever the reset signal goes low, regardless of the clock
	if (reset = '1') then
		q <= '0';
	-- If not resetting, update the register output on the clock's rising edge
	elsif (rising_edge(clk)) then
		q <= d;
	end if;
end process;

end arch_registrador;