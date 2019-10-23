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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/25/2019 10:05:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dmux IS
    PORT (
	entrada : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic;
	outA : OUT std_logic_vector(7 DOWNTO 0);
	outB : OUT std_logic_vector(7 DOWNTO 0)
	);
END dmux;

ARCHITECTURE structure OF dmux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_outA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outB : std_logic_vector(7 DOWNTO 0);
SIGNAL \outA[0]~output_o\ : std_logic;
SIGNAL \outA[1]~output_o\ : std_logic;
SIGNAL \outA[2]~output_o\ : std_logic;
SIGNAL \outA[3]~output_o\ : std_logic;
SIGNAL \outA[4]~output_o\ : std_logic;
SIGNAL \outA[5]~output_o\ : std_logic;
SIGNAL \outA[6]~output_o\ : std_logic;
SIGNAL \outA[7]~output_o\ : std_logic;
SIGNAL \outB[0]~output_o\ : std_logic;
SIGNAL \outB[1]~output_o\ : std_logic;
SIGNAL \outB[2]~output_o\ : std_logic;
SIGNAL \outB[3]~output_o\ : std_logic;
SIGNAL \outB[4]~output_o\ : std_logic;
SIGNAL \outB[5]~output_o\ : std_logic;
SIGNAL \outB[6]~output_o\ : std_logic;
SIGNAL \outB[7]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \outA~0_combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \outA~1_combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \outA~2_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \outA~3_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \outA~4_combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \outA~5_combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \outA~6_combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \outA~7_combout\ : std_logic;
SIGNAL \outB~0_combout\ : std_logic;
SIGNAL \outB~1_combout\ : std_logic;
SIGNAL \outB~2_combout\ : std_logic;
SIGNAL \outB~3_combout\ : std_logic;
SIGNAL \outB~4_combout\ : std_logic;
SIGNAL \outB~5_combout\ : std_logic;
SIGNAL \outB~6_combout\ : std_logic;
SIGNAL \outB~7_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
ww_sel <= sel;
outA <= ww_outA;
outB <= ww_outB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\outA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~0_combout\,
	devoe => ww_devoe,
	o => \outA[0]~output_o\);

\outA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~1_combout\,
	devoe => ww_devoe,
	o => \outA[1]~output_o\);

\outA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~2_combout\,
	devoe => ww_devoe,
	o => \outA[2]~output_o\);

\outA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~3_combout\,
	devoe => ww_devoe,
	o => \outA[3]~output_o\);

\outA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~4_combout\,
	devoe => ww_devoe,
	o => \outA[4]~output_o\);

\outA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~5_combout\,
	devoe => ww_devoe,
	o => \outA[5]~output_o\);

\outA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~6_combout\,
	devoe => ww_devoe,
	o => \outA[6]~output_o\);

\outA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outA~7_combout\,
	devoe => ww_devoe,
	o => \outA[7]~output_o\);

\outB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~0_combout\,
	devoe => ww_devoe,
	o => \outB[0]~output_o\);

\outB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~1_combout\,
	devoe => ww_devoe,
	o => \outB[1]~output_o\);

\outB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~2_combout\,
	devoe => ww_devoe,
	o => \outB[2]~output_o\);

\outB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~3_combout\,
	devoe => ww_devoe,
	o => \outB[3]~output_o\);

\outB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~4_combout\,
	devoe => ww_devoe,
	o => \outB[4]~output_o\);

\outB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~5_combout\,
	devoe => ww_devoe,
	o => \outB[5]~output_o\);

\outB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~6_combout\,
	devoe => ww_devoe,
	o => \outB[6]~output_o\);

\outB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outB~7_combout\,
	devoe => ww_devoe,
	o => \outB[7]~output_o\);

\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

\outA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~0_combout\ = (\entrada[0]~input_o\ & \sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \sel~input_o\,
	combout => \outA~0_combout\);

\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

\outA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~1_combout\ = (\sel~input_o\ & \entrada[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[1]~input_o\,
	combout => \outA~1_combout\);

\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

\outA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~2_combout\ = (\sel~input_o\ & \entrada[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[2]~input_o\,
	combout => \outA~2_combout\);

\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

\outA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~3_combout\ = (\sel~input_o\ & \entrada[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[3]~input_o\,
	combout => \outA~3_combout\);

\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

\outA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~4_combout\ = (\sel~input_o\ & \entrada[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[4]~input_o\,
	combout => \outA~4_combout\);

\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

\outA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~5_combout\ = (\sel~input_o\ & \entrada[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[5]~input_o\,
	combout => \outA~5_combout\);

\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

\outA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~6_combout\ = (\sel~input_o\ & \entrada[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[6]~input_o\,
	combout => \outA~6_combout\);

\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

\outA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \outA~7_combout\ = (\sel~input_o\ & \entrada[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \entrada[7]~input_o\,
	combout => \outA~7_combout\);

\outB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~0_combout\ = (\entrada[0]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~0_combout\);

\outB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~1_combout\ = (\entrada[1]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~1_combout\);

\outB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~2_combout\ = (\entrada[2]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~2_combout\);

\outB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~3_combout\ = (\entrada[3]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~3_combout\);

\outB~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~4_combout\ = (\entrada[4]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[4]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~4_combout\);

\outB~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~5_combout\ = (\entrada[5]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~5_combout\);

\outB~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~6_combout\ = (\entrada[6]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[6]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~6_combout\);

\outB~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \outB~7_combout\ = (\entrada[7]~input_o\ & !\sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[7]~input_o\,
	datad => \sel~input_o\,
	combout => \outB~7_combout\);

ww_outA(0) <= \outA[0]~output_o\;

ww_outA(1) <= \outA[1]~output_o\;

ww_outA(2) <= \outA[2]~output_o\;

ww_outA(3) <= \outA[3]~output_o\;

ww_outA(4) <= \outA[4]~output_o\;

ww_outA(5) <= \outA[5]~output_o\;

ww_outA(6) <= \outA[6]~output_o\;

ww_outA(7) <= \outA[7]~output_o\;

ww_outB(0) <= \outB[0]~output_o\;

ww_outB(1) <= \outB[1]~output_o\;

ww_outB(2) <= \outB[2]~output_o\;

ww_outB(3) <= \outB[3]~output_o\;

ww_outB(4) <= \outB[4]~output_o\;

ww_outB(5) <= \outB[5]~output_o\;

ww_outB(6) <= \outB[6]~output_o\;

ww_outB(7) <= \outB[7]~output_o\;
END structure;


