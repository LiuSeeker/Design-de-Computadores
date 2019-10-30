library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity topLevel is
	port (
		KEY : IN std_logic_vector(3 DOWNTO 0);
		SW  : IN std_logic_vector(17 DOWNTO 0);
		
		CLOCK_50 : IN std_logic;
	
		LEDR : OUT std_logic_vector(17 DOWNTO 0) := (others => '0')
		);
end entity;

architecture arch of topLevel IS

	signal saidaPC    : std_logic_vector(31 DOWNTO 0);
	signal saidaAdder : std_logic_vector(31 DOWNTO 0);
	signal saidaROM   : std_logic_vector(31 DOWNTO 0);
	signal REG1       : std_logic_vector(31 DOWNTO 0);
	signal REG2       : std_logic_vector(31 DOWNTO 0);
    signal saidaRAM   : std_logic_vector(31 DOWNTO 0);
    signal saidaULA   : std_logic_vector(31 DOWNTO 0);
	signal saidaExt	  : std_logic_vector(31 DOWNTO 0);
    signal saidaMux	  : std_logic_vector(31 DOWNTO 0);
	signal saidaMux2  : std_logic_vector(31 DOWNTO 0);
	signal saidaBorda0: std_logic;
    signal saidaBorda1: std_logic;

begin
	
	LEDR(7 downto 0) <= saidaULA(7 downto 0); 
	
	PC : entity work.registradorGenerico generic map (larguraDados => 32)
	port map (
		DIN  	    	=> saidaAdder,
		DOUT 		   => saidaPC,
		ENABLE		   => SW(17), -------------------------------------------------
		CLK 			=> saidaBorda1,
		RST 			=> saidaBorda0 ----------------------------------------------
		);
				
	ADDER : entity work.somadorGenerico 
	port map (
		entradaA		=> "00000000000000000000000000000100",
		entradaB		=> saidaPC,
		saida			=> saidaAdder
		);
	
	ROM1 : entity work.ROM
	port map (
	    clk      => saidaBorda1,
		 Endereco => saidaPC,
		 Dado     => saidaROM
			);
	
	BR1 : entity work.bancoRegistradores
	port map (
		clk             => saidaBorda1,
		enderecoA       => saidaROM(25 DOWNTO 21),
		enderecoB       => saidaROM(20 DOWNTO 16),
		enderecoC       => saidaROM(15 DOWNTO 11),
		dadoEscritaC    => saidaMux2,
		escreveC        => SW(16), ---------------------------------------------
		saidaA          => REG1,
		saidaB          => REG2
		);
					  
	ULA1 : entity work.ULA
	port map (
		inA 		 => REG1,
		inB 		 => saidaMux,
		sel 		 => SW(0), ----------------------------------------------------

		outData 	 => saidaULA
		);
	
	DB1 : entity work.detectorBorda
	port map(
		clk => CLOCK_50,
		entrada => not KEY(1),
		saida => saidaBorda1
	    );
	
	DB0 : entity work.detectorBorda
	port map(
		clk => CLOCK_50,
		entrada => not KEY(0),
		saida => saidaBorda0
	    );
	
	EXTS : entity work.extensorSinal
    generic map(
        DATA_WIDTH => 16
        )
    port map(
        A => saidaROM(15 DOWNTO 0),
        B => saidaExt
        );

    MUX1 : entity work.mux2x1
    generic map(
        dataW => 32
        )
    port map(
        a1 => REG2,
        a2 => saidaExt,
        sel => SW(1),
        b => saidaMux
        );
		  
	RAM1 : entity work.RAM
	generic map(
        dataWidth => 32,
        addrWidth => 32
	    )
    port map(
        addr => saidaULA,
        we => SW(2),
        clk => CLOCK_50,
        dado_in => REG2,
        dado_out => saidaRAM
        );
    
    MUX2 : entity work.mux2x1
    generic map(
        dataW => 32
        )
    port map(
        a1 => saidaUla,
        a2 => saidaRAM,
        sel => SW(3),
        b => saidaMux2
        );
    
    
        
end architecture;
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  