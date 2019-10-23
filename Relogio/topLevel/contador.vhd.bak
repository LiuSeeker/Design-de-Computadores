library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is

generic
    (
		divisor : natural := 3
	 );
port
	(
		clk      :   in std_logic;
		saida_clk :   out std_logic
	);
   
end entity;


architecture divInteiro of contador is

signal tick : std_logic := '0';
signal contador : integer range 0 to divisor+1 := 0;
	
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if contador = divisor then
				contador <= 0;
				tick <= not tick;
			else
				contador <= contador + 1;
			end if;
		end if;
	end process;
	saida_clk <= tick;
	
end architecture divInteiro;