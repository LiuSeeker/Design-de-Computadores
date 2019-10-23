library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dmux is
	
generic
(
	DATA_WIDTH : natural := 8
);

port ( 
	entrada  : in std_logic_vector(DATA_WIDTH-1 downto 0);
	
	sel  : in std_logic;
	
	outA : out std_logic_vector(DATA_WIDTH-1 downto 0);
	outB : out std_logic_vector(DATA_WIDTH-1 downto 0)
);
end entity;


architecture arch of dmux is

begin

	processo: process(entrada, sel)
	begin
	
		if(sel = '1') then
			outA <= entrada;
			outB <= "00000000";
		else
			outA <= "00000000";
			outB <= entrada;
		end if;
	end process processo;
end architecture;
