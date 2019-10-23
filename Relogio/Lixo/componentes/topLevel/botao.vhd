library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity botao is
	port
	(
		d : in std_logic;
		clk : in std_logic;
		enable : in std_logic;
		q : out std_logic
	);
end botao;


architecture arch_registrador of botao is

 signal saidaQ : STD_LOGIC;

begin

	process (all)
	begin
		if (rising_edge(clk)) then
		if(enable = '1') then
				saidaQ <= d;
		 elsif(enable = '0') then
				saidaQ <= '0';
		 end if;
		end if;
	end process;
	 q <=  '0';-- not  (d and (not saidaQ));
	
	
end arch_registrador;