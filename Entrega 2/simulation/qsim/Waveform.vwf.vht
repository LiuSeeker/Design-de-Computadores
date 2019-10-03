-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/28/2019 18:45:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BancoDeRegistradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancoDeRegistradores_vhd_vec_tst IS
END BancoDeRegistradores_vhd_vec_tst;
ARCHITECTURE BancoDeRegistradores_arch OF BancoDeRegistradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dadoEscrita : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enderecoEscrita : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enderecoLeituraA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enderecoLeituraB : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL saidaA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT BancoDeRegistradores
	PORT (
	clk : IN STD_LOGIC;
	dadoEscrita : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enderecoEscrita : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	enderecoLeituraA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	enderecoLeituraB : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	saidaA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BancoDeRegistradores
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dadoEscrita => dadoEscrita,
	enderecoEscrita => enderecoEscrita,
	enderecoLeituraA => enderecoLeituraA,
	enderecoLeituraB => enderecoLeituraB,
	saidaA => saidaA,
	saidaB => saidaB,
	we => we
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dadoEscrita[7]
t_prcs_dadoEscrita_7: PROCESS
BEGIN
	dadoEscrita(7) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscrita_7;
-- dadoEscrita[6]
t_prcs_dadoEscrita_6: PROCESS
BEGIN
	dadoEscrita(6) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_6;
-- dadoEscrita[5]
t_prcs_dadoEscrita_5: PROCESS
BEGIN
	dadoEscrita(5) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscrita_5;
-- dadoEscrita[4]
t_prcs_dadoEscrita_4: PROCESS
BEGIN
	dadoEscrita(4) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_4;
-- dadoEscrita[3]
t_prcs_dadoEscrita_3: PROCESS
BEGIN
	dadoEscrita(3) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscrita_3;
-- dadoEscrita[2]
t_prcs_dadoEscrita_2: PROCESS
BEGIN
	dadoEscrita(2) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_2;
-- dadoEscrita[1]
t_prcs_dadoEscrita_1: PROCESS
BEGIN
	dadoEscrita(1) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscrita_1;
-- dadoEscrita[0]
t_prcs_dadoEscrita_0: PROCESS
BEGIN
	dadoEscrita(0) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_0;
-- enderecoEscrita[2]
t_prcs_enderecoEscrita_2: PROCESS
BEGIN
	enderecoEscrita(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoEscrita_2;
-- enderecoEscrita[1]
t_prcs_enderecoEscrita_1: PROCESS
BEGIN
	enderecoEscrita(1) <= '0';
WAIT;
END PROCESS t_prcs_enderecoEscrita_1;
-- enderecoEscrita[0]
t_prcs_enderecoEscrita_0: PROCESS
BEGIN
	enderecoEscrita(0) <= '1';
WAIT;
END PROCESS t_prcs_enderecoEscrita_0;
-- enderecoLeituraA[2]
t_prcs_enderecoLeituraA_2: PROCESS
BEGIN
	enderecoLeituraA(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoLeituraA_2;
-- enderecoLeituraA[1]
t_prcs_enderecoLeituraA_1: PROCESS
BEGIN
	enderecoLeituraA(1) <= '0';
WAIT;
END PROCESS t_prcs_enderecoLeituraA_1;
-- enderecoLeituraA[0]
t_prcs_enderecoLeituraA_0: PROCESS
BEGIN
	enderecoLeituraA(0) <= '1';
WAIT;
END PROCESS t_prcs_enderecoLeituraA_0;
-- enderecoLeituraB[2]
t_prcs_enderecoLeituraB_2: PROCESS
BEGIN
	enderecoLeituraB(2) <= '0';
WAIT;
END PROCESS t_prcs_enderecoLeituraB_2;
-- enderecoLeituraB[1]
t_prcs_enderecoLeituraB_1: PROCESS
BEGIN
	enderecoLeituraB(1) <= '0';
WAIT;
END PROCESS t_prcs_enderecoLeituraB_1;
-- enderecoLeituraB[0]
t_prcs_enderecoLeituraB_0: PROCESS
BEGIN
	enderecoLeituraB(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoLeituraB_0;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '0';
	WAIT FOR 500000 ps;
	we <= '1';
WAIT;
END PROCESS t_prcs_we;
END BancoDeRegistradores_arch;
