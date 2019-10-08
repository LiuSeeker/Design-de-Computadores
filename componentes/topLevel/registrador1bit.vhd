library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador1bit is
	port
	(
		d : in std_logic;
		clk : in std_logic;
		q : out std_logic
	);
end registrador1bit;


architecture arch_registrador of registrador1bit is
begin

	process (clk)
	begin
		if (rising_edge(clk)) then
			q <= d;
		end if;
	end process;

end arch_registrador;