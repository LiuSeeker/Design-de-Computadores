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
-- Generated on "08/21/2019 09:09:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ram_1k
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram_1k_vhd_vec_tst IS
END ram_1k_vhd_vec_tst;
ARCHITECTURE ram_1k_arch OF ram_1k_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL cs : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT ram_1k
	PORT (
	addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	clk : IN STD_LOGIC;
	cs : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram_1k
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	cs => cs,
	data => data,
	q => q,
	we => we
	);
-- addr[9]
t_prcs_addr_9: PROCESS
BEGIN
	addr(9) <= '0';
WAIT;
END PROCESS t_prcs_addr_9;
-- addr[8]
t_prcs_addr_8: PROCESS
BEGIN
	addr(8) <= '1';
WAIT;
END PROCESS t_prcs_addr_8;
-- addr[7]
t_prcs_addr_7: PROCESS
BEGIN
	addr(7) <= '0';
WAIT;
END PROCESS t_prcs_addr_7;
-- addr[6]
t_prcs_addr_6: PROCESS
BEGIN
	addr(6) <= '0';
WAIT;
END PROCESS t_prcs_addr_6;
-- addr[5]
t_prcs_addr_5: PROCESS
BEGIN
	addr(5) <= '0';
WAIT;
END PROCESS t_prcs_addr_5;
-- addr[4]
t_prcs_addr_4: PROCESS
BEGIN
	addr(4) <= '1';
WAIT;
END PROCESS t_prcs_addr_4;
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '1';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;

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

-- cs
t_prcs_cs: PROCESS
BEGIN
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 20000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 15000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 20000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 25000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 30000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 25000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 15000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 25000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 15000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 30000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 35000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 20000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 25000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 25000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 10000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 10000 ps;
	cs <= '1';
	WAIT FOR 15000 ps;
	cs <= '0';
	WAIT FOR 5000 ps;
	cs <= '1';
	WAIT FOR 5000 ps;
	cs <= '0';
	WAIT FOR 20000 ps;
	cs <= '1';
	WAIT FOR 20000 ps;
	cs <= '0';
WAIT;
END PROCESS t_prcs_cs;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
	WAIT FOR 640000 ps;
	data(6) <= '1';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
	WAIT FOR 320000 ps;
	data(5) <= '1';
	WAIT FOR 320000 ps;
	data(5) <= '0';
	WAIT FOR 320000 ps;
	data(5) <= '1';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		data(4) <= '0';
		WAIT FOR 160000 ps;
		data(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		data(3) <= '0';
		WAIT FOR 80000 ps;
		data(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		data(2) <= '0';
		WAIT FOR 40000 ps;
		data(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
LOOP
	data(1) <= '0';
	WAIT FOR 20000 ps;
	data(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
LOOP
	data(0) <= '0';
	WAIT FOR 10000 ps;
	data(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_0;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 10000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 10000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 20000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 30000 ps;
	we <= '1';
	WAIT FOR 75000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 20000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 10000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 10000 ps;
	we <= '0';
	WAIT FOR 20000 ps;
	we <= '1';
	WAIT FOR 10000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 20000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 10000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 35000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 25000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 25000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 20000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 20000 ps;
	we <= '0';
	WAIT FOR 15000 ps;
	we <= '1';
	WAIT FOR 15000 ps;
	we <= '0';
	WAIT FOR 5000 ps;
	we <= '1';
	WAIT FOR 20000 ps;
	we <= '0';
	WAIT FOR 10000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
	WAIT FOR 30000 ps;
	we <= '1';
	WAIT FOR 5000 ps;
	we <= '0';
WAIT;
END PROCESS t_prcs_we;
END ram_1k_arch;
