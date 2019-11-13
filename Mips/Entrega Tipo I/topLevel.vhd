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
	signal saidaAdderPc : std_logic_vector(31 DOWNTO 0);
	signal saidaAdderJmp : std_logic_vector(31 DOWNTO 0);
	signal saidaROM   : std_logic_vector(31 DOWNTO 0);
	signal saidaBR1       : std_logic_vector(31 DOWNTO 0);
	signal saidaBR2       : std_logic_vector(31 DOWNTO 0);
   signal saidaRAM   : std_logic_vector(31 DOWNTO 0);
   signal saidaULA   : std_logic_vector(31 DOWNTO 0);
	signal saidaExt	: std_logic_vector(31 DOWNTO 0);
	signal saidaMUXREG2IM : std_logic_vector(31 DOWNTO 0);
	signal saidaMUXULARAM : std_logic_vector(31 DOWNTO 0);
	signal saidaMUXPCBEQ : std_logic_vector(31 DOWNTO 0);
	signal saidaShifterIm : std_logic_vector(31 DOWNTO 0);
	signal saidaMUXRTRD : std_logic_vector(4 DOWNTO 0);
	signal saidaBorda0: std_logic;
   signal saidaBorda1: std_logic;
   signal zeroUla: std_logic;
	signal writeRAM: std_logic;
	signal selMUXULARAM: std_logic;
	signal selMUXBEQ: std_logic;

begin

	LEDR(7 DOWNTO 0) <= saidaBR2(7 DOWNTO 0);

	writeRAM <= '1' when saidaROM(31 DOWNTO 26) = "101011" else '0';
	selMUXULARAM <= '1' when saidaROM(31 DOWNTO 26) = "100011" else '0';
	selMUXBEQ <= '1' when saidaROM(31 DOWNTO 26) = "000100" else '0';
	
	PC : entity work.registradorGenerico generic map (larguraDados => 32)
	port map (
		DIN  	    	=> saidaMUXPCBEQ,
		DOUT 		   => saidaPC,
		ENABLE		   => SW(17), -------------------------------------------------
		CLK 			=> saidaBorda1,
		RST 			=> saidaBorda0 ----------------------------------------------
		);
				
	ADDERPC : entity work.somadorGenerico 
	port map (
		entradaA		=> "00000000000000000000000000000100",
		entradaB		=> saidaPC,
		saida			=> saidaAdderPc
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
		enderecoC       => saidaMUXRTRD,
		dadoEscritaC    => saidaMUXULARAM,
		escreveC        => SW(16), ---------------------------------------------
		saidaA          => saidaBR1,
		saidaB          => saidaBR2
		);
					  
	ULA1 : entity work.ULA
	port map (
		inA 		 => saidaBR1,
		inB 		 => saidaMUXREG2IM,
		sel 		 => SW(0), ----------------------------------------------------

		outData 	 => saidaULA,
		zer => zeroUla
		);
	
	K1 : entity work.detectorBorda
	port map(
		clk => CLOCK_50,
		entrada => not KEY(1),
		saida => saidaBorda1
	    );
	
	K0 : entity work.detectorBorda
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

    MUXREG2IM : entity work.mux2x1
    generic map(
        dataW => 32
        )
    port map(
        a1 => saidaBR2,
        a2 => saidaExt,
        sel => SW(1),
        b => saidaMUXREG2IM
        );
		  
	RAM1 : entity work.RAM
	generic map(
        dataWidth => 32,
        addrWidth => 32
	    )
    port map(
        addr => saidaULA,
        we => writeRAM,
        clk => CLOCK_50,
        dado_in => saidaBR2,
        dado_out => saidaRAM
        );
    
	MUXULARAM : entity work.mux2x1
	generic map(
		dataW => 32
		)
	port map(
		a1 => saidaUla,
		a2 => saidaRAM,
		sel => selMUXULARAM,
		b => saidaMUXULARAM
		);
    
	MUXRTRD : entity work.mux2x1
	generic map(
		dataW => 5
		)
   port map(
		a1 => saidaROM(20 DOWNTO 16),
		a2 => saidaROM(15 DOWNTO 11),
		sel => SW(4),
		b => saidaMUXRTRD
		);
		
	SHIFTERIM : entity work.shifterEsq
	generic map(
		dataW => 32,
		nshift => 2
		)
	port map(
		a => saidaExt,
		b => saidaShifterIm
		);

	ADDERJMP : entity work.somadorGenerico
	port map(
		entradaA		=> saidaAdderPC,
		entradaB		=> saidaShifterIm,
		saida			=> saidaAdderJmp
		);
		
	MUXPCBEQ : entity work.mux2x1
	generic map(
		dataW => 32
		)
   port map(
		a1 => saidaAdderPC,
		a2 => saidaAdderJmp,
		sel => selMUXBEQ and zeroUla,
		b => saidaMUXPCBEQ
		);
	
end architecture;
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  