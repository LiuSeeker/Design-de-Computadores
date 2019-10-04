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
				dataRead  :  in std_logic_vector(3 downto 0); ------- NÃO SEI O TAMANHO, PERGUNTAR PRO LIU
				CLK  :       in std_logic;
				
				outAdress :  out std_logic_vector(ROM_WIDTH-1 downto 0);
				dataWrite:   out std_logic_vector(3 downto 0);
				ioAdress:    out std_logic_vector(3 downto 0)
	);
end entity;

architecture proc of processador is

	signal barramento:       std_logic_vector(INSTRUCTION_WIDTH-1 downto 0);
	signal uc_vector:        std_logic_vector(6 downto 0);
		-- uc_vector 
		-- Bit 6/4: ULA
		-- Bit 3: Mux Pos ULA
		-- Bit 2: Banco de Registradores
		-- Bit 1: AND PC
		-- Bit 0: Demux
		
	signal saidaBanco:       std_logic_vector(3 downto 0);
	signal saidaULA:         std_logic_vector(3 downto 0);
	signal saidaMuxPosULA:   std_logic_vector(3 downto 0);
	signal saida3state:   std_logic_vector(3 downto 0);
	signal flagULA:          std_logic;
	
	signal saidaMuxPC: std_logic_vector(7 downto 0);
	signal saidaPC: std_logic_vector(7 downto 0);
	signal saidaProcessador: std_logic_vector(7 downto 0);
	
begin 
	
	barramento <= instrucao;
	
	UC: entity work.UnidadeControle port map(
			opcode => barramento(15 downto 12),
			
			outULA       => uc_vector(6 downto 4), 
			outMuxPosULA => uc_vector(3),
			outBancoRegistradores => uc_vector(2),
			outAndPC     => uc_vector(1),
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
			a1  => barramento(11 downto 4),
			a2  => std_logic_vector(unsigned(saidaPC) + "00000001"),
			sel => flagULA and uc_vector(1),
			
			b   => saidaMuxPC
		);
	
	PC: entity work.flip_flop port map(
			data_in => saidaMuxPC,
			clk => CLK,
			data_out => saidaPC
		);
		
	Tristate: entity work.buffer3state port map(
			entrada => saidaBanco,
			hab     => uc_vector(0),
			
			output  => saida3state
		);
			
	outAdress <= saidaPC;
	ioAdress <= barramento(3 downto 0);
	dataWrite <= saida3state;
	
end proc;	