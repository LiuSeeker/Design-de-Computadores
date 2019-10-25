library IEEE;
use ieee.std_logic_1164.all;

entity conversorHex7Seg is
    port
    (
        -- Input ports
		  clk: in std_logic;
		  enable : in std_Logic;
        dadoHex : in  std_logic_vector(3 downto 0);
        apaga   : in  std_logic := '0';
        -- Output ports
        HEX : out std_logic_vector(6 downto 0) := "1000000" -- := (others => '1')
    );
end entity;

architecture comportamento of conversorHex7Seg is

  signal rascSaida7seg: std_logic_vector(6 downto 0);

begin
    rascSaida7seg <=    "1000000" when dadoHex="0000" AND enable = '1' else ---0
                            "1111001" when dadoHex="0001" AND enable = '1' else ---1
                            "0100100" when dadoHex="0010" AND enable = '1' else ---2
                            "0110000" when dadoHex="0011" AND enable = '1' else ---3
                            "0011001" when dadoHex="0100" AND enable = '1' else ---4
                            "0010010" when dadoHex="0101" AND enable = '1' else ---5
                            "0000010" when dadoHex="0110" AND enable = '1' else ---6
                            "1111000" when dadoHex="0111" AND enable = '1' else ---7
                            "0000000" when dadoHex="1000" AND enable = '1' else ---8
                            "0010000" when dadoHex="1001" AND enable = '1' else ---9
                            "1111111" when enable = '1' AND dadoHex > "1001" else
									 "1111111"; -- Apaga todos segmentos.

	 process(clk)
	begin
	 if rising_edge(clk) then
		if(enable = '1') then
              HEX <= rascSaida7seg;
			end if;
       end if;
	end process;
	
end architecture;