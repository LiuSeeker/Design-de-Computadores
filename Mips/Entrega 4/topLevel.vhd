library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity topLevel is
	port (
		KEY : IN std_logic_vector(3 DOWNTO 0);
		SW  : IN std_logic_vector(17 DOWNTO 0);
		
		CLOCK_50 : IN std_logic;
		
		LEDR : OUT std_logic_vector(17 DOWNTO 0)
		);
end entity;

architecture arch of topLevel IS

	signal saidaPC    : std_logic_vector(31 DOWNTO 0);
	signal saidaAdder : std_logic_vector(31 DOWNTO 0);
	signal saidaROM   : std_logic_vector(31 DOWNTO 0);
	signal REG1       : std_logic_vector(31 DOWNTO 0);
	signal REG2       : std_logic_vector(31 DOWNTO 0);
	signal REG3       : std_logic_vector(31 DOWNTO 0);

begin
	
	LEDR(5 downto 0) <= saidaROM(5 downto 0); 
		
		
	
	PC : entity work.registradorGenerico generic map (larguraDados => 32)
	port map (
		DIN  	    	=> saidaAdder,
		DOUT 		   => saidaPC,
		ENABLE		=> SW(17), -------------------------------------------------
		CLK 			=> CLOCK_50,
		RST 			=> not KEY(0) ----------------------------------------------
		);
				
	ADDER : entity work.somadorGenerico 
	port map (
		entradaA		=> "00000000000000000000000000000001",
		entradaB		=> saidaPC,
		saida			=> saidaAdder
		);
	
	ROM1 : entity work.ROM
	port map (
	    clk      => CLOCK_50,
		 Endereco => saidaPC,
		 Dado     => saidaROM
			);
	
	BR1 : entity work.bancoRegistradores
	port map (
		clk             => CLOCK_50,
		enderecoA       => saidaROM(25 DOWNTO 21),
		enderecoB       => saidaROM(20 DOWNTO 16),
		enderecoC       => saidaROM(15 DOWNTO 11),
		dadoEscritaC    => REG3,
		escreveC        => SW(16), ---------------------------------------------
		saidaA          => REG1,
		saidaB          => REG2
		);
					  
	ULA1 : entity work.ULA
	port map (
		inA 		 => REG1,
		inB 		 => REG2,
		sel 		 => SW(0), ----------------------------------------------------

		outData 	 => REG3
		);
	
end architecture;
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  