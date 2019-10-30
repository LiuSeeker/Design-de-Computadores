library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
   generic (
         dataWidth: natural := 8;
         addrWidth: natural := 8;
			memoryAddrWidth: natural := 8
    );
    port
    (
        addr     : in std_logic_vector(addrWidth-1 downto 0);
        we       : in std_logic := '1';
        clk      : in std_logic;
        dado_in  : in std_logic_vector(dataWidth-1 downto 0);
        dado_out : out std_logic_vector(dataWidth-1 downto 0)
    );
end entity;

architecture rtl of RAM is
    -- Build a 2-D array type for the RAM
    subtype word_t is std_logic_vector(dataWidth-1 downto 0);
    type memory_t is array((2**memoryAddrWidth-1) downto 0) of word_t;

    -- Declare the RAM signal.
    signal ram_s : memory_t;
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(we = '1') then
                ram_s(to_integer(unsigned(addr((memoryAddrWidth + 1) DOWNTO 2)))) <= dado_in;
            end if;
        end if;
    end process;
    dado_out <= ram_s(to_integer(unsigned(addr((memoryAddrWidth + 1) DOWNTO 2))));
end architecture;