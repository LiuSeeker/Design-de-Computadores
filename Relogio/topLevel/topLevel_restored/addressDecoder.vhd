library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addressDecoder is
	
	generic
	(
		DATA_WIDTH : natural := 4
	);

	port ( 
				endereco  : in std_logic_vector(DATA_WIDTH-1 downto 0);
					
				outBaseTempo   : out std_logic;
				outDisplay0    : out std_logic;
				outDisplay1    : out std_logic;
				outDisplay2    : out std_logic;
				outDisplay3    : out std_logic;
				outDisplay4    : out std_logic;
				outDisplay5    : out std_logic;
				outMudaHor     : out std_logic;
				outIncMin      : out std_logic;
				outIncHor      : out std_logic;
				outZeraBase    : out std_logic;
				outZeraMudaHor : out std_logic;
				outZeraIncMin  : out std_logic;
				outZeraIncHor  : out std_logic
	);
end entity;

architecture endereco of addressDecoder is

begin

	outBaseTempo <= '1' when endereco = "0000" else
						 '0';
						 
	outDisplay0 <= '1' when endereco = "0001" else
						 '0';
	
	outDisplay1 <= '1' when endereco = "0010" else
						 '0';
	
	outDisplay2 <= '1' when endereco = "0011" else
						 '0';
	
	outDisplay3 <= '1' when endereco = "0100" else
						 '0';
	
	outDisplay4 <= '1' when endereco = "0101" else
						 '0';
	
	outDisplay5 <= '1' when endereco = "0110" else
						 '0';
	
	outMudaHor <= '1' when endereco = "0111" else
						 '0';
	
	outIncMin <= '1' when endereco = "1000" else
						 '0';
	
	outIncHor <= '1' when endereco = "1001" else
						 '0';
	
	outZeraBase <= '1' when endereco = "1010" else
						 '0';
	
	outZeraMudaHor <= '1' when endereco = "1011" else
						 '0';
	
	outZeraIncMin <= '1' when endereco = "1100" else
						 '0';
	
	outZeraIncHor <= '1' when endereco = "1101" else
						 '0';
	
end endereco;