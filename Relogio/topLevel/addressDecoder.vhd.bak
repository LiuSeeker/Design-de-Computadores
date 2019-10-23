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
	process(endereco)
	begin
		if(endereco = "0000") then
				outBaseTempo   <= '1'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0001") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '1';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0010") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '1';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0011") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '1';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0100") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '1';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0101") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '1';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0110") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '1';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "0111") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '1';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "1000") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '1';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "1001") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '1';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "1010") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '1';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "1011") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '1';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "1100") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '1';
				outZeraIncHor  <= '0';
		
		elsif (endereco = "1101") then
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '1';
		
		else
				outBaseTempo   <= '0'; 
				outDisplay0    <= '0';
				outDisplay1    <= '0';
				outDisplay2    <= '0';
				outDisplay3    <= '0';
				outDisplay4    <= '0';
				outDisplay5    <= '0';
				outMudaHor     <= '0';
				outIncMin      <= '0';
				outIncHor      <= '0';
				outZeraBase    <= '0';
				outZeraMudaHor <= '0';
				outZeraIncMin  <= '0';
				outZeraIncHor  <= '0';
	end if;
	end process;
end endereco;