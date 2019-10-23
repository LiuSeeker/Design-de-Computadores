library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador is
	generic
	(
		DATA_WIDTH : natural := 8
	);
	

	port
	(
		d : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		clk : in std_logic;
		clk_enable : in std_logic;
		reset: in std_logic;
		q : out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end registrador;


architecture arch_registrador of registrador is

begin

	process (clk, reset)
	begin
		if (reset = '1') then
			q <= (OTHERS => '0');
		elsif (rising_edge(clk)) then
			if (clk_enable = '1') then
				q <= d;
			end if;
		end if;
	end process;

end arch_registrador;