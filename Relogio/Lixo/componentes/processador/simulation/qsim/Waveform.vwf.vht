-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- Generated on "10/07/2019 11:19:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          processador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processador_vhd_vec_tst IS
END processador_vhd_vec_tst;
ARCHITECTURE processador_arch OF processador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL dataRead : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataWrite : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL instrucao : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ioAdress : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outAdress : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT processador
	PORT (
	CLK : IN STD_LOGIC;
	dataRead : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataWrite : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	instrucao : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ioAdress : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outAdress : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : processador
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	dataRead => dataRead,
	dataWrite => dataWrite,
	instrucao => instrucao,
	ioAdress => ioAdress,
	outAdress => outAdress
	);
-- instrucao[15]
t_prcs_instrucao_15: PROCESS
BEGIN
	instrucao(15) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_15;
-- instrucao[14]
t_prcs_instrucao_14: PROCESS
BEGIN
	instrucao(14) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_14;
-- instrucao[13]
t_prcs_instrucao_13: PROCESS
BEGIN
	instrucao(13) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_13;
-- instrucao[12]
t_prcs_instrucao_12: PROCESS
BEGIN
	instrucao(12) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_12;
-- instrucao[11]
t_prcs_instrucao_11: PROCESS
BEGIN
	instrucao(11) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_11;
-- instrucao[10]
t_prcs_instrucao_10: PROCESS
BEGIN
	instrucao(10) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_10;
-- instrucao[9]
t_prcs_instrucao_9: PROCESS
BEGIN
	instrucao(9) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_9;
-- instrucao[8]
t_prcs_instrucao_8: PROCESS
BEGIN
	instrucao(8) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_8;
-- instrucao[7]
t_prcs_instrucao_7: PROCESS
BEGIN
	instrucao(7) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_7;
-- instrucao[6]
t_prcs_instrucao_6: PROCESS
BEGIN
	instrucao(6) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_6;
-- instrucao[5]
t_prcs_instrucao_5: PROCESS
BEGIN
	instrucao(5) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_5;
-- instrucao[4]
t_prcs_instrucao_4: PROCESS
BEGIN
	instrucao(4) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_4;
-- instrucao[3]
t_prcs_instrucao_3: PROCESS
BEGIN
	instrucao(3) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_3;
-- instrucao[2]
t_prcs_instrucao_2: PROCESS
BEGIN
	instrucao(2) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_2;
-- instrucao[1]
t_prcs_instrucao_1: PROCESS
BEGIN
	instrucao(1) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_1;
-- instrucao[0]
t_prcs_instrucao_0: PROCESS
BEGIN
	instrucao(0) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_0;
END processador_arch;
