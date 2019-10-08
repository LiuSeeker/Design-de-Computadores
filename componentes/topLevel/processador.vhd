library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
	
	generic
	(
		INSTRUCTION_WIDTH : natural := 16;
		ROM_WIDTH:          natural := 8;
		DATAREAD_WIDTH:     natural := 4;
		DATAWRITE_WIDTH:    natural := 4
	);

	port ( 
				
				instrucao  : in std_logic_vector(INSTRUCTION_WIDTH-1 downto 0);
				dataRead  :  in std_logic_vector(3 downto 0); 
				CLK  :       in std_logic;
				
				LEDR : out std_logic_vector(17 downto 0);
				outAdress :  out std_logic_vector(ROM_WIDTH-1 downto 0);
				dataWrite:   out std_logic_vector(3 downto 0);
				ioAdress:    out std_logic_vector(3 downto 0)
	);
end entity;

architecture proc of processador is

		


	signal barramento:       std_logic_vector(INSTRUCTION_WIDTH-1 downto 0);
	signal uc_vector:        std_logic_vector(7 downto 0);
		-- uc_vector 
		-- Bit 6/4: ULA
		-- Bit 3: Mux Pos ULA
		-- Bit 2: Banco de Registradores
		-- Bit 1: AND PC
		-- Bit 0: Demux
		
	signal saidaBanco       : std_logic_vector(3 downto 0);
	signal saidaULA         : std_logic_vector(3 downto 0);
	signal saidaMuxPosULA   : std_logic_vector(3 downto 0);
	signal saida3state      : std_logic_vector(3 downto 0);
	signal flagULA          : std_logic;
	signal flagFlipFlop     : std_logic;
	signal saidaRegFlag		: std_logic;
	
	signal saidaMuxPC       : std_logic_vector(7 downto 0);
	signal saidaPC          : std_logic_vector(7 downto 0) := "00000000";
	signal saidaProcessador : std_logic_vector(7 downto 0);
	signal saidaAdder			: std_logic_vector(7 downto 0);

begin 

	barramento <= instrucao;	
	
	UC: entity work.UnidadeControle port map(
			opcode => barramento(15 downto 12),
			
			outJmp   => uc_vector(7),
			outULA       => uc_vector(6 downto 4), 
			outMuxPosULA => uc_vector(3),
			outBancoRegistradores => uc_vector(2),
			outJzn     => uc_vector(1),
			outDemux     => uc_vector(0)
		);
		
	ULA: entity work.ula port map(
			inA => barramento(3 downto 0),
			inB => saidaBanco,
			sel => uc_vector(6 downto 4),
			
			outData => saidaULA,
 			flag => flagULA
		);
	
	MuxPosULA: entity work.mux port map(
			a1  => saidaULA,
			a2  => dataRead,
			sel => uc_vector(3),
			
			b   => saidaMuxPosULA
		);
	
	BancoRegistradores: entity work.bancoRegistradores port map(
		  clk         => CLK,
        endereco    => barramento(6 downto 4),
        dadoEscrita => saidaMuxPosULA,
        escreveC    => uc_vector(2),

        saida       => saidaBanco	
		);
		
	MuxPC: entity work.mux generic map (dataW => 8) port map(
			a1  => saidaAdder,
			a2  => barramento(11 downto 4),
			sel => uc_vector(7) or (saidaRegFlag and uc_vector(1)),
			
			b   => saidaMuxPC
		);
		
	AdderPC: entity work.adder	port map(
			cin => saidaPC,
			cout => saidaAdder
		);
	
	PC: entity work.flip_flop port map(
			data_in => saidaMuxPC,
			clk => CLK,
			data_out => saidaPC
		);
		
	Tristate: entity work.buffer3state4bit port map(
			entrada => saidaBanco,
			hab     => uc_vector(0),
			
			output  => saida3state
		);
		
	RegTroll: entity work.registrador1bit port map(
		d => flagULA,
		clk => CLK,
		q => 	saidaRegFlag
		);
		
	LEDR(0) <= saidaRegFlag;
	LEDR(1) <= uc_vector(1);
	LEDR(2) <= uc_vector(7);
		
	--LEDR(0) <= uc_vector(0);
	--LEDR(2) <= uc_vector(1);
	--LEDR(4) <= uc_vector(2);
	--LEDR(6) <= uc_vector(3);
	--LEDR(10 downto 8) <= uc_vector(6 downto 4);
	--LEDR(17 downto 14) <= barramento(15 downto 12);
	
	--LEDR(3 downto 0) <= saidaBanco;
			
	outAdress <= saidaPC;
	ioAdress <= barramento(3 downto 0);
	dataWrite <= saida3state;
	
end proc;	