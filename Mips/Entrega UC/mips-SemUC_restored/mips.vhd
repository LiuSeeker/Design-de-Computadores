-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
	port
    (
        CLOCK_50			            : IN  STD_LOGIC;
		  KEY									: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  LEDR:OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		  
		  HEX0     : out std_logic_vector(6 downto 0):= "1000000";
		
		   HEX1     : out std_logic_vector(6 downto 0):= "1000000";
			HEX2     : out std_logic_vector(6 downto 0):= "1000000";
			HEX3     : out std_logic_vector(6 downto 0):= "1000000";
			HEX4     : out std_logic_vector(6 downto 0):= "1000000";
			HEX5     : out std_logic_vector(6 downto 0):= "1000000";
			HEX6     : out std_logic_vector(6 downto 0):= "1000000";
			HEX7     : out std_logic_vector(6 downto 0):= "1000000"
		 
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares

    -- Sinal de clock auxiliar para simulação
    signal saidaEdge  : STD_LOGIC;
	 signal hexin : std_logic_vector(31 downto 0);
begin
	LEDR <= "000000000000000000";

	
	
	DISPLAYhex6: entity work.conversorHex7Seg port map(
		  	dadoHex => hexin(3 downto 0),
			saida7seg => HEX6
	);

	DISPLAYhex7: entity work.conversorHex7Seg port map(
		  	dadoHex => hexin(7 downto 4),
			saida7seg => HEX7
	);






	
	
	
	
	
	
	 edge : entity work.edgeDetector
	port map
	(
        clk	                    => CLOCK_50,
		  entrada                 => NOT KEY(0),
		  saida  					  => saidaEdge
    );
	
    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => saidaEdge,
		  saida_hex => hexin
		  
    );

end architecture;
