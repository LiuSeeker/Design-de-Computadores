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
-- Generated on "08/16/2019 11:10:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          registrador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registrador_vhd_vec_tst IS
END registrador_vhd_vec_tst;
ARCHITECTURE registrador_arch OF registrador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_enable : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT registrador
	PORT (
	clk : IN STD_LOGIC;
	clk_enable : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : registrador
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_enable => clk_enable,
	d => d,
	q => q,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- clk_enable
t_prcs_clk_enable: PROCESS
BEGIN
	clk_enable <= '0';
	WAIT FOR 100000 ps;
	clk_enable <= '1';
	WAIT FOR 50000 ps;
	clk_enable <= '0';
	WAIT FOR 50000 ps;
	clk_enable <= '1';
	WAIT FOR 50000 ps;
	clk_enable <= '0';
	WAIT FOR 50000 ps;
	clk_enable <= '1';
	WAIT FOR 50000 ps;
	clk_enable <= '0';
	WAIT FOR 200000 ps;
	clk_enable <= '1';
	WAIT FOR 150000 ps;
	clk_enable <= '0';
	WAIT FOR 150000 ps;
	clk_enable <= '1';
	WAIT FOR 50000 ps;
	clk_enable <= '0';
WAIT;
END PROCESS t_prcs_clk_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 150000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
	WAIT FOR 200000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
	WAIT FOR 100000 ps;
	reset <= '1';
	WAIT FOR 100000 ps;
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= '0';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= '0';
	WAIT FOR 640000 ps;
	d(6) <= '1';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= '0';
	WAIT FOR 320000 ps;
	d(5) <= '1';
	WAIT FOR 320000 ps;
	d(5) <= '0';
	WAIT FOR 320000 ps;
	d(5) <= '1';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		d(4) <= '0';
		WAIT FOR 160000 ps;
		d(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	d(4) <= '0';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		d(3) <= '0';
		WAIT FOR 80000 ps;
		d(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		d(2) <= '0';
		WAIT FOR 40000 ps;
		d(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
LOOP
	d(1) <= '0';
	WAIT FOR 20000 ps;
	d(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
LOOP
	d(0) <= '0';
	WAIT FOR 10000 ps;
	d(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d_0;
END registrador_arch;
