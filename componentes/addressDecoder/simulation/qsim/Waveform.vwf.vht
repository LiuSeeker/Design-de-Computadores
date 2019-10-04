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
-- Generated on "10/04/2019 14:47:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          addressDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addressDecoder_vhd_vec_tst IS
END addressDecoder_vhd_vec_tst;
ARCHITECTURE addressDecoder_arch OF addressDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL endereco : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outBaseTempo : STD_LOGIC;
SIGNAL outDisplay0 : STD_LOGIC;
SIGNAL outDisplay1 : STD_LOGIC;
SIGNAL outDisplay2 : STD_LOGIC;
SIGNAL outDisplay3 : STD_LOGIC;
SIGNAL outDisplay4 : STD_LOGIC;
SIGNAL outDisplay5 : STD_LOGIC;
SIGNAL outIncHor : STD_LOGIC;
SIGNAL outIncMin : STD_LOGIC;
SIGNAL outMudaHor : STD_LOGIC;
SIGNAL outZeraBase : STD_LOGIC;
SIGNAL outZeraIncHor : STD_LOGIC;
SIGNAL outZeraIncMin : STD_LOGIC;
SIGNAL outZeraMudaHor : STD_LOGIC;
COMPONENT addressDecoder
	PORT (
	endereco : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outBaseTempo : OUT STD_LOGIC;
	outDisplay0 : OUT STD_LOGIC;
	outDisplay1 : OUT STD_LOGIC;
	outDisplay2 : OUT STD_LOGIC;
	outDisplay3 : OUT STD_LOGIC;
	outDisplay4 : OUT STD_LOGIC;
	outDisplay5 : OUT STD_LOGIC;
	outIncHor : OUT STD_LOGIC;
	outIncMin : OUT STD_LOGIC;
	outMudaHor : OUT STD_LOGIC;
	outZeraBase : OUT STD_LOGIC;
	outZeraIncHor : OUT STD_LOGIC;
	outZeraIncMin : OUT STD_LOGIC;
	outZeraMudaHor : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : addressDecoder
	PORT MAP (
-- list connections between master ports and signals
	endereco => endereco,
	outBaseTempo => outBaseTempo,
	outDisplay0 => outDisplay0,
	outDisplay1 => outDisplay1,
	outDisplay2 => outDisplay2,
	outDisplay3 => outDisplay3,
	outDisplay4 => outDisplay4,
	outDisplay5 => outDisplay5,
	outIncHor => outIncHor,
	outIncMin => outIncMin,
	outMudaHor => outMudaHor,
	outZeraBase => outZeraBase,
	outZeraIncHor => outZeraIncHor,
	outZeraIncMin => outZeraIncMin,
	outZeraMudaHor => outZeraMudaHor
	);
-- endereco[3]
t_prcs_endereco_3: PROCESS
BEGIN
	endereco(3) <= '0';
	WAIT FOR 560000 ps;
	endereco(3) <= '1';
WAIT;
END PROCESS t_prcs_endereco_3;
-- endereco[2]
t_prcs_endereco_2: PROCESS
BEGIN
	endereco(2) <= '0';
	WAIT FOR 280000 ps;
	endereco(2) <= '1';
	WAIT FOR 280000 ps;
	endereco(2) <= '0';
	WAIT FOR 280000 ps;
	endereco(2) <= '1';
WAIT;
END PROCESS t_prcs_endereco_2;
-- endereco[1]
t_prcs_endereco_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		endereco(1) <= '0';
		WAIT FOR 140000 ps;
		endereco(1) <= '1';
		WAIT FOR 140000 ps;
	END LOOP;
	endereco(1) <= '0';
	WAIT FOR 140000 ps;
	endereco(1) <= '1';
WAIT;
END PROCESS t_prcs_endereco_1;
-- endereco[0]
t_prcs_endereco_0: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		endereco(0) <= '0';
		WAIT FOR 70000 ps;
		endereco(0) <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	endereco(0) <= '0';
WAIT;
END PROCESS t_prcs_endereco_0;
END addressDecoder_arch;
