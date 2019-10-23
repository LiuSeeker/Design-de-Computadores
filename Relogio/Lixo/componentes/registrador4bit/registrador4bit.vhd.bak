library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador is
	generic
	(
		DATA_WIDTH : natural := 4
	);
	

	port
	(
		d : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		clk : in std_logic;
		hab : in std_logic;
		
		q : out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end registrador;


architecture arch_registrador of registrador is

begin

	process (clk)
	begin
		if (reset = '1') then
			q <= "10000000";
		elsif (rising_edge(clk)) then
			if (hab = '1') then
				q <= d;
			end if;
		end if;
	end process;

end arch_registrador;