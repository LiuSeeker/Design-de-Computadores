-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity fluxo_dados is
    generic (
        larguraROM          : natural := 8 -- deve ser menor ou igual a 32
    );
	port
    (
        clk			            : IN STD_LOGIC;
		  saida_hex : OUT std_logic_vector(31 downto 0)
    );
end entity;

architecture estrutural of fluxo_dados is

    -- Declaração de sinais auxiliares
    
    -- Sinais auxiliar da instrução
    signal instrucao_s : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para o banco de registradores
    signal RA, RB : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a ULA
    signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Z_out : std_logic;

    -- Sinais auxiliares para a lógica do PC
    signal PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a RAM
    signal dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    signal sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    signal PC_4_concat_imed : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_shift_jump : std_logic_vector(27 downto 0);
            
    -- Sinais auxiliares dos MUXs
    signal sel_mux_beq : std_logic;
    signal saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
     
    -- Controle da ULA
    signal ULActr : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);

    -- Sinais dos registradores do pipeline
    signal saida_reg1 : std_logic_vector(REG1_WIDTH-1 downto 0);
    signal saida_reg2 : std_logic_vector(REG2_WIDTH-1 downto 0);
    signal saida_reg3 : std_logic_vector(REG3_WIDTH-1 downto 0);
    signal saida_reg4 : std_logic_vector(REG4_WIDTH-1 downto 0);

    signal pontosDeControle_s : std_logic_vector(CONTROLWORD_WIDTH-1 DOWNTO 0);

    -- Codigos da palavra de controle:
    alias ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle_s(10 downto 8); -- ex
    alias escreve_RC        : std_logic is pontosDeControle_s(7); -- wb
    alias escreve_RAM       : std_logic is pontosDeControle_s(6); -- M
    alias leitura_RAM       : std_logic is pontosDeControle_s(5); -- M
    alias sel_mux_ula_mem   : std_logic is pontosDeControle_s(4); -- wb
    alias sel_mux_rd_rt     : std_logic is pontosDeControle_s(3); -- ex
    alias sel_mux_banco_ula : std_logic is pontosDeControle_s(2); -- ex
    alias sel_beq           : std_logic is pontosDeControle_s(1); -- M
    alias sel_mux_jump      : std_logic is pontosDeControle_s(0); -- M

	 
    -- Parsing da instrucao (REG1)
    alias REG1_instrucao : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg1(63 downto 32);
    alias REG1_PC_mais_4 : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg1(31 downto 0);
	 
    alias opcode    : std_logic_vector(OPCODE_WIDTH-1 downto 0) is REG1_instrucao(31 DOWNTO 26);
    alias RS_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is REG1_instrucao(25 downto 21);
    alias RT_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is REG1_instrucao(20 downto 16);
    alias RD_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is REG1_instrucao(15 downto 11);
    alias imediato  : std_logic_vector(15 downto 0) is REG1_instrucao(15 downto 0);
	 
	 
    -- Execucao da instrucao (REG2)
    alias REG2_RD_addr : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is saida_reg2(148 downto 144);
    alias REG2_RT_addr : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is saida_reg2(143 downto 139);
    alias REG2_sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg2(138 downto 107);
    alias funct : std_logic_vector(FUNCT_WIDTH-1 downto 0) is saida_reg2(112 DOWNTO 107);
    alias REG2_RB : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg2(106 downto 75);
    alias REG2_RA : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg2(74 downto 43);
    alias REG2_PC_mais_4 : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg2(42 downto 11);
    alias REG2_pontosDeControle_s : std_logic_vector(CONTROLWORD_WIDTH-1 DOWNTO 0) is saida_reg2(10 downto 0);
	 
    alias REG2_ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is REG2_pontosDeControle_s(10 downto 8); -- ex
    alias REG2_escreve_RC        : std_logic is REG2_pontosDeControle_s(7); -- wb
    alias REG2_escreve_RAM       : std_logic is REG2_pontosDeControle_s(6); -- M
    alias REG2_leitura_RAM       : std_logic is REG2_pontosDeControle_s(5); -- M
    alias REG2_sel_mux_ula_mem   : std_logic is REG2_pontosDeControle_s(4); -- wb
    alias REG2_sel_mux_rd_rt     : std_logic is REG2_pontosDeControle_s(3); -- ex
    alias REG2_sel_mux_banco_ula : std_logic is REG2_pontosDeControle_s(2); -- ex
    alias REG2_sel_beq           : std_logic is REG2_pontosDeControle_s(1); -- M
    alias REG2_sel_mux_jump      : std_logic is REG2_pontosDeControle_s(0); -- M
	 

	 -- (REG3)
	 alias REG3_RD_addr           : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is saida_reg3(107 downto 103);
	 alias REG3_write_data        : std_logic_vector(DATA_WIDTH-1 downto 0) is saida_reg3(102 downto 71);
	 alias REG3_addr_data         : std_logic_vector(ADDR_WIDTH-1 downto 0) is saida_reg3(70 downto 39);
	 alias REG3_zero              : std_logic is saida_reg3(38);
	 alias REG3_PC_mais_shift     : std_logic_vector(ADDR_WIDTH-1 downto 0) is saida_reg3(37 downto 6);
    alias REG3_escreve_RC        : std_logic is saida_reg3(5); -- wb
	 alias REG3_escreve_RAM       : std_logic is saida_reg3(4); -- m
	 alias REG3_leitura_RAM       : std_logic is saida_reg3(3); -- m
    alias REG3_sel_mux_ula_mem   : std_logic is saida_reg3(2); -- wb
	 alias REG3_sel_beq           : std_logic is saida_reg3(1); -- m
	 alias REG3_sel_mux_jump      : std_logic is saida_reg3(0); -- m
    
    
	 -- (REG4)
	 alias REG4_RD_addr           : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is saida_reg4(70 downto 66);
	 alias REG4_addr_data         : std_logic_vector(ADDR_WIDTH-1 downto 0) is saida_reg4(65 downto 34);
	 alias REG4_read_data         : std_logic_vector(ADDR_WIDTH-1 downto 0) is saida_reg4(33 downto 2);
	 alias REG4_sel_mux_ula_mem   : std_logic is saida_reg4(1);
	 alias REG4_escreve_RC        : std_logic is saida_reg4(0);

begin
	
	
	saida_hex(7 downto 0) <= PC_s(7 downto 0);
 	
    sel_mux_beq <= REG3_sel_beq AND REG3_zero;

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 downto 28) & saida_shift_jump;
	 
    -- Banco de registradores
    BR: entity work.bancoRegistradores 
        generic map (
            larguraDados => DATA_WIDTH, 
            larguraEndBancoRegs => 5
        )
        port map (
            enderecoA => RS_addr,
            enderecoB => RT_addr,
            enderecoC => REG4_RD_addr,
            clk          => clk,
            dadoEscritaC => saida_mux_ula_mem, 
            escreveC     => REG4_escreve_RC,
            saidaA       => RA,
            saidaB       => RB
        );
    
    -- ULA
    ULA: entity work.ULA
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            A   => REG2_RA,
            B   => saida_mux_banco_ula,
            ctr => ULActr,
            C   => saida_ula,
            Z   => Z_out
        );
    
    UCULA : entity work.uc_ula 
        port map
        (
            funct  => funct,
            ALUop  => REG2_ULAop,
            ALUctr => ULActr
        );
     
    -- PC e somadores
    PC: entity work.Registrador
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            data_out => PC_s,
            data_in  => saida_mux_jump,
            clk      => clk,
            enable   => '1',
            reset    => '1' -- reset negado
        );
    
    Somador_imediato: entity work.somador 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => entrada_somador_beq,
            entradaB => REG2_PC_mais_4,
            saida    => PC_mais_4_mais_imediato
        );
    
    Somador: entity work.soma4
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entrada => PC_s,
            saida   => PC_mais_4
        ); 

    -- ROM
    ROM: entity work.ROM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => larguraROM
        ) 
		port map (
            endereco => PC_s(larguraROM-1 downto 0),
            dado     => instrucao_s
        );
    
    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
    RAM: entity work.single_port_RAM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => ADDR_WIDTH
        )
		port map (
            endereco    => REG3_addr_data, 
            we          => REG3_escreve_RAM,
            re          => REG3_leitura_RAM,
            clk         => clk,
            dado_write  => REG3_write_data,
            dado_read   => dado_lido_mem
        ); 

     -- Componentes manipuladores do imediato
    extensor: entity work.estendeSinalGenerico 
        generic map (
            larguraDadoEntrada => 16,
            larguraDadoSaida   => DATA_WIDTH
        )
		port map (
            estendeSinal_IN  => imediato,
            estendeSinal_OUT => sinal_ext 
        ); 

    shift: entity work.shift2_imediato 
        generic map (
            larguraDado => DATA_WIDTH
        )
		port map (
            shift_IN  => REG2_sinal_ext,
            shift_OUT => entrada_somador_beq
        );
    
    -- Componentes manipuladores do endereço de jump
    shift_jump: entity work.shift2 
        generic map (
            larguraDado => 26
        )
		port map (
            shift_IN  => REG1_instrucao(25 downto 0),
            shift_OUT => saida_shift_jump
        );
    
    -- MUXs
    mux_Ula_Memoria: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => REG4_addr_data, 
            entradaB => REG4_read_data, 
            seletor  => REG4_sel_mux_ula_mem,
            saida    => saida_mux_ula_mem
        );
	 
    mux_Rd_Rt: entity work.muxGenerico2 
        generic map (
            larguraDados => REGBANK_ADDR_WIDTH
        )
		port map (
            entradaA => REG2_RT_addr, 
            entradaB => REG2_RD_addr,
            seletor  => REG2_sel_mux_rd_rt,
            saida    => saida_mux_rd_rt
        );
	
    mux_Banco_Ula: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => REG2_RB, 
            entradaB => REG2_sinal_ext,  
            seletor  => REG2_sel_mux_banco_ula,
            saida    => saida_mux_banco_ula
        );
		
    mux_beq: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => PC_mais_4,
            entradaB => PC_mais_4_mais_imediato,
            seletor  => sel_mux_beq,
            saida    => saida_mux_beq
        );
		
    mux_jump: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_mux_beq,
            entradaB => PC_4_concat_imed,
            seletor  => REG3_sel_mux_jump,
            saida    => saida_mux_jump
        );

    UC : entity work.uc
        port map(
            opcode => opcode,
            pontosDeControle => pontosDeControle_s
        );
		  
	 -- REGS pipeline
    REG1 : entity work.Registrador
        generic map(
            NUM_BITS => REG1_WIDTH
        )
        port map(
            clk => clk,
            enable => '1',
            reset => '1',
            data_in => instrucao_s & PC_mais_4,
            data_out => saida_reg1
        );

    REG2 : entity work.Registrador
        generic map(
            NUM_BITS => REG2_WIDTH
        )
        port map(
            clk => clk,
            enable => '1',
            reset => '1',
            data_in => RD_addr & RT_addr & sinal_ext & RB & RA & REG1_PC_mais_4 & pontosDeControle_s,
            data_out => saida_reg2
        );
		  
	 REG3 : entity work.Registrador
		  generic map(
				NUM_BITS => REG3_WIDTH
		  )
		  port map(
				clk => clk,
				enable => '1',
				reset => '1',
				data_in => saida_mux_rd_rt & REG2_RB & saida_ula & Z_out & PC_mais_4_mais_imediato & REG2_pontosDeControle_s(7) & REG2_pontosDeControle_s(6) & REG2_pontosDeControle_s(5) & REG2_pontosDeControle_s(4) & REG2_pontosDeControle_s(1) & REG2_pontosDeControle_s(0), 
				data_out => saida_reg3
		  );
		  
	 REG4 : entity work.Registrador
		  generic map(
				NUM_BITS => REG4_WIDTH
		  )
		  port map(
				clk => clk,
				enable => '1',
				reset => '1',
				data_in => REG3_RD_addr & REG3_addr_data & dado_lido_mem & REG3_sel_mux_ula_mem & REG3_escreve_RC,
				data_out => saida_reg4
		  );

end architecture;
