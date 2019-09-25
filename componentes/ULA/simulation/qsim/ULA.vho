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

-- DATE "09/18/2019 08:57:54"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	inA : IN std_logic_vector(7 DOWNTO 0);
	inB : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	outData : OUT std_logic_vector(7 DOWNTO 0);
	outFlagZero : OUT std_logic
	);
END ula;

-- Design Ports Information
-- outData[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outFlagZero	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outFlagZero : std_logic;
SIGNAL \outData[0]~output_o\ : std_logic;
SIGNAL \outData[1]~output_o\ : std_logic;
SIGNAL \outData[2]~output_o\ : std_logic;
SIGNAL \outData[3]~output_o\ : std_logic;
SIGNAL \outData[4]~output_o\ : std_logic;
SIGNAL \outData[5]~output_o\ : std_logic;
SIGNAL \outData[6]~output_o\ : std_logic;
SIGNAL \outData[7]~output_o\ : std_logic;
SIGNAL \outFlagZero~output_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \inA[1]~input_o\ : std_logic;
SIGNAL \outData~0_combout\ : std_logic;
SIGNAL \inA[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \inA[7]~input_o\ : std_logic;
SIGNAL \inA[5]~input_o\ : std_logic;
SIGNAL \inA[6]~input_o\ : std_logic;
SIGNAL \inA[4]~input_o\ : std_logic;
SIGNAL \inA[2]~input_o\ : std_logic;
SIGNAL \inA[3]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \outData~2_combout\ : std_logic;
SIGNAL \inB[0]~input_o\ : std_logic;
SIGNAL \outData~1_combout\ : std_logic;
SIGNAL \outData~3_combout\ : std_logic;
SIGNAL \outData~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \outData~5_combout\ : std_logic;
SIGNAL \inB[1]~input_o\ : std_logic;
SIGNAL \outData~6_combout\ : std_logic;
SIGNAL \outData~7_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \outData~8_combout\ : std_logic;
SIGNAL \inB[2]~input_o\ : std_logic;
SIGNAL \outData~9_combout\ : std_logic;
SIGNAL \outData~10_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \outData~11_combout\ : std_logic;
SIGNAL \inB[3]~input_o\ : std_logic;
SIGNAL \outData~12_combout\ : std_logic;
SIGNAL \outData~13_combout\ : std_logic;
SIGNAL \inB[4]~input_o\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \outData~14_combout\ : std_logic;
SIGNAL \outData~15_combout\ : std_logic;
SIGNAL \outData~16_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \outData~17_combout\ : std_logic;
SIGNAL \inB[5]~input_o\ : std_logic;
SIGNAL \outData~18_combout\ : std_logic;
SIGNAL \outData~19_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \outData~20_combout\ : std_logic;
SIGNAL \inB[6]~input_o\ : std_logic;
SIGNAL \outData~21_combout\ : std_logic;
SIGNAL \outData~22_combout\ : std_logic;
SIGNAL \inB[7]~input_o\ : std_logic;
SIGNAL \outData~24_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \outData~23_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \outData~25_combout\ : std_logic;
SIGNAL \outFlagZero~1_combout\ : std_logic;
SIGNAL \outFlagZero~3_combout\ : std_logic;
SIGNAL \outFlagZero~2_combout\ : std_logic;
SIGNAL \outFlagZero~4_combout\ : std_logic;
SIGNAL \outFlagZero~0_combout\ : std_logic;
SIGNAL \outFlagZero~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inA <= inA;
ww_inB <= inB;
ww_sel <= sel;
outData <= ww_outData;
outFlagZero <= ww_outFlagZero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y52_N16
\outData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~4_combout\,
	devoe => ww_devoe,
	o => \outData[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\outData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~7_combout\,
	devoe => ww_devoe,
	o => \outData[1]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\outData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~10_combout\,
	devoe => ww_devoe,
	o => \outData[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\outData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~13_combout\,
	devoe => ww_devoe,
	o => \outData[3]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\outData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~16_combout\,
	devoe => ww_devoe,
	o => \outData[4]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\outData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~19_combout\,
	devoe => ww_devoe,
	o => \outData[5]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\outData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~22_combout\,
	devoe => ww_devoe,
	o => \outData[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\outData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outData~25_combout\,
	devoe => ww_devoe,
	o => \outData[7]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\outFlagZero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outFlagZero~5_combout\,
	devoe => ww_devoe,
	o => \outFlagZero~output_o\);

-- Location: IOIBUF_X0_Y47_N22
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X1_Y49_N28
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\sel[0]~input_o\ & (!\sel[3]~input_o\ & (\sel[1]~input_o\ & !\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X0_Y55_N8
\inA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(1),
	o => \inA[1]~input_o\);

-- Location: LCCOMB_X1_Y49_N2
\outData~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~0_combout\ = (!\sel[3]~input_o\ & (!\sel[1]~input_o\ & !\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[3]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \outData~0_combout\);

-- Location: IOIBUF_X0_Y44_N22
\inA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(0),
	o => \inA[0]~input_o\);

-- Location: LCCOMB_X4_Y49_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \inA[0]~input_o\ $ (VCC)
-- \Add1~1\ = CARRY(\inA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inA[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y49_N8
\inA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(7),
	o => \inA[7]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\inA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(5),
	o => \inA[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\inA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(6),
	o => \inA[6]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\inA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(4),
	o => \inA[4]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\inA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(2),
	o => \inA[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\inA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(3),
	o => \inA[3]~input_o\);

-- Location: LCCOMB_X4_Y49_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\inA[4]~input_o\ & (!\inA[2]~input_o\ & (!\inA[3]~input_o\ & !\inA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[4]~input_o\,
	datab => \inA[2]~input_o\,
	datac => \inA[3]~input_o\,
	datad => \inA[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X4_Y49_N10
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\inA[7]~input_o\ & (!\inA[5]~input_o\ & (!\inA[6]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[7]~input_o\,
	datab => \inA[5]~input_o\,
	datac => \inA[6]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X4_Y49_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X2_Y49_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \inA[0]~input_o\ $ (VCC)
-- \Add0~1\ = CARRY(\inA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inA[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y49_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\sel[0]~input_o\ & (!\sel[3]~input_o\ & !\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X2_Y49_N24
\outData~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~2_combout\ = (\outData~0_combout\ & ((\Equal1~0_combout\ & (\Add1~2_combout\)) # (!\Equal1~0_combout\ & ((\Add0~0_combout\))))) # (!\outData~0_combout\ & (((!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outData~0_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \outData~2_combout\);

-- Location: IOIBUF_X0_Y44_N15
\inB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(0),
	o => \inB[0]~input_o\);

-- Location: LCCOMB_X3_Y49_N24
\outData~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~1_combout\ = (!\outData~0_combout\ & ((!\Equal2~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \outData~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \outData~1_combout\);

-- Location: LCCOMB_X2_Y49_N26
\outData~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~3_combout\ = (\outData~2_combout\ & (((\inB[0]~input_o\) # (!\outData~1_combout\)))) # (!\outData~2_combout\ & (\inA[1]~input_o\ & ((\outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[1]~input_o\,
	datab => \outData~2_combout\,
	datac => \inB[0]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~3_combout\);

-- Location: LCCOMB_X1_Y49_N30
\outData~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~4_combout\ = (!\Equal4~0_combout\ & \outData~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \outData~3_combout\,
	combout => \outData~4_combout\);

-- Location: LCCOMB_X4_Y49_N16
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\inA[1]~input_o\ & (\Add1~1\ & VCC)) # (!\inA[1]~input_o\ & (!\Add1~1\))
-- \Add1~4\ = CARRY((!\inA[1]~input_o\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X3_Y49_N18
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~3_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X2_Y49_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\inA[1]~input_o\ & (!\Add0~1\)) # (!\inA[1]~input_o\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\inA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y49_N20
\outData~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~5_combout\ = (\Equal1~0_combout\ & (\Add1~5_combout\ & ((\outData~0_combout\)))) # (!\Equal1~0_combout\ & (((\Add0~2_combout\) # (!\outData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add1~5_combout\,
	datac => \Add0~2_combout\,
	datad => \outData~0_combout\,
	combout => \outData~5_combout\);

-- Location: IOIBUF_X0_Y54_N8
\inB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(1),
	o => \inB[1]~input_o\);

-- Location: LCCOMB_X2_Y49_N22
\outData~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~6_combout\ = (\outData~5_combout\ & (((\inB[1]~input_o\) # (!\outData~1_combout\)))) # (!\outData~5_combout\ & (\inA[2]~input_o\ & ((\outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[2]~input_o\,
	datab => \outData~5_combout\,
	datac => \inB[1]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~6_combout\);

-- Location: LCCOMB_X1_Y49_N24
\outData~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~7_combout\ = (!\Equal4~0_combout\ & \outData~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \outData~6_combout\,
	combout => \outData~7_combout\);

-- Location: LCCOMB_X2_Y49_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\inA[2]~input_o\ & (\Add0~3\ $ (GND))) # (!\inA[2]~input_o\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\inA[2]~input_o\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inA[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X4_Y49_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\inA[2]~input_o\ & ((GND) # (!\Add1~4\))) # (!\inA[2]~input_o\ & (\Add1~4\ $ (GND)))
-- \Add1~7\ = CARRY((\inA[2]~input_o\) # (!\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inA[2]~input_o\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X4_Y49_N30
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X3_Y49_N28
\outData~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~8_combout\ = (\Equal1~0_combout\ & (((\outData~0_combout\ & \Add1~8_combout\)))) # (!\Equal1~0_combout\ & ((\Add0~4_combout\) # ((!\outData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Equal1~0_combout\,
	datac => \outData~0_combout\,
	datad => \Add1~8_combout\,
	combout => \outData~8_combout\);

-- Location: IOIBUF_X0_Y57_N22
\inB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(2),
	o => \inB[2]~input_o\);

-- Location: LCCOMB_X3_Y49_N6
\outData~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~9_combout\ = (\outData~8_combout\ & (((\inB[2]~input_o\) # (!\outData~1_combout\)))) # (!\outData~8_combout\ & (\inA[3]~input_o\ & ((\outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datab => \outData~8_combout\,
	datac => \inB[2]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~9_combout\);

-- Location: LCCOMB_X2_Y49_N0
\outData~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~10_combout\ = (!\Equal4~0_combout\ & \outData~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \outData~9_combout\,
	combout => \outData~10_combout\);

-- Location: LCCOMB_X2_Y49_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\inA[3]~input_o\ & (!\Add0~5\)) # (!\inA[3]~input_o\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\inA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X4_Y49_N20
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\inA[3]~input_o\ & (\Add1~7\ & VCC)) # (!\inA[3]~input_o\ & (!\Add1~7\))
-- \Add1~10\ = CARRY((!\inA[3]~input_o\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X4_Y49_N8
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\Add1~9_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~9_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X3_Y49_N0
\outData~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~11_combout\ = (\Equal1~0_combout\ & (((\outData~0_combout\ & \Add1~11_combout\)))) # (!\Equal1~0_combout\ & ((\Add0~6_combout\) # ((!\outData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Equal1~0_combout\,
	datac => \outData~0_combout\,
	datad => \Add1~11_combout\,
	combout => \outData~11_combout\);

-- Location: IOIBUF_X0_Y55_N15
\inB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(3),
	o => \inB[3]~input_o\);

-- Location: LCCOMB_X3_Y49_N10
\outData~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~12_combout\ = (\outData~11_combout\ & ((\inB[3]~input_o\) # ((!\outData~1_combout\)))) # (!\outData~11_combout\ & (((\inA[4]~input_o\ & \outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outData~11_combout\,
	datab => \inB[3]~input_o\,
	datac => \inA[4]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~12_combout\);

-- Location: LCCOMB_X3_Y49_N4
\outData~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~13_combout\ = (!\Equal4~0_combout\ & \outData~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~0_combout\,
	datad => \outData~12_combout\,
	combout => \outData~13_combout\);

-- Location: IOIBUF_X0_Y42_N1
\inB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(4),
	o => \inB[4]~input_o\);

-- Location: LCCOMB_X4_Y49_N22
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\inA[4]~input_o\ & ((GND) # (!\Add1~10\))) # (!\inA[4]~input_o\ & (\Add1~10\ $ (GND)))
-- \Add1~13\ = CARRY((\inA[4]~input_o\) # (!\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[4]~input_o\,
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X5_Y49_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~12_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X2_Y49_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\inA[4]~input_o\ & (\Add0~7\ $ (GND))) # (!\inA[4]~input_o\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\inA[4]~input_o\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y49_N2
\outData~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~14_combout\ = (\Equal1~0_combout\ & (\Add1~14_combout\ & ((\outData~0_combout\)))) # (!\Equal1~0_combout\ & (((\Add0~8_combout\) # (!\outData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add1~14_combout\,
	datac => \Add0~8_combout\,
	datad => \outData~0_combout\,
	combout => \outData~14_combout\);

-- Location: LCCOMB_X2_Y49_N28
\outData~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~15_combout\ = (\outData~14_combout\ & ((\inB[4]~input_o\) # ((!\outData~1_combout\)))) # (!\outData~14_combout\ & (((\inA[5]~input_o\ & \outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[4]~input_o\,
	datab => \outData~14_combout\,
	datac => \inA[5]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~15_combout\);

-- Location: LCCOMB_X1_Y49_N10
\outData~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~16_combout\ = (!\Equal4~0_combout\ & \outData~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \outData~15_combout\,
	combout => \outData~16_combout\);

-- Location: LCCOMB_X2_Y49_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\inA[5]~input_o\ & (!\Add0~9\)) # (!\inA[5]~input_o\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\inA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X4_Y49_N24
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\inA[5]~input_o\ & (\Add1~13\ & VCC)) # (!\inA[5]~input_o\ & (!\Add1~13\))
-- \Add1~16\ = CARRY((!\inA[5]~input_o\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inA[5]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X5_Y49_N26
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\Add1~15_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~15_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X3_Y49_N30
\outData~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~17_combout\ = (\Equal1~0_combout\ & (((\outData~0_combout\ & \Add1~17_combout\)))) # (!\Equal1~0_combout\ & ((\Add0~10_combout\) # ((!\outData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal1~0_combout\,
	datac => \outData~0_combout\,
	datad => \Add1~17_combout\,
	combout => \outData~17_combout\);

-- Location: IOIBUF_X0_Y44_N8
\inB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(5),
	o => \inB[5]~input_o\);

-- Location: LCCOMB_X3_Y49_N8
\outData~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~18_combout\ = (\outData~17_combout\ & (((\inB[5]~input_o\) # (!\outData~1_combout\)))) # (!\outData~17_combout\ & (\inA[6]~input_o\ & ((\outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outData~17_combout\,
	datab => \inA[6]~input_o\,
	datac => \inB[5]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~18_combout\);

-- Location: LCCOMB_X4_Y49_N2
\outData~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~19_combout\ = (!\Equal4~0_combout\ & \outData~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \outData~18_combout\,
	combout => \outData~19_combout\);

-- Location: LCCOMB_X2_Y49_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\inA[6]~input_o\ & (\Add0~11\ $ (GND))) # (!\inA[6]~input_o\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\inA[6]~input_o\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inA[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X4_Y49_N26
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\inA[6]~input_o\ & ((GND) # (!\Add1~16\))) # (!\inA[6]~input_o\ & (\Add1~16\ $ (GND)))
-- \Add1~19\ = CARRY((\inA[6]~input_o\) # (!\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inA[6]~input_o\,
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X4_Y49_N4
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~18_combout\ & !\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \Equal2~1_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X3_Y49_N26
\outData~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~20_combout\ = (\outData~0_combout\ & ((\Equal1~0_combout\ & ((\Add1~20_combout\))) # (!\Equal1~0_combout\ & (\Add0~12_combout\)))) # (!\outData~0_combout\ & (((!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \outData~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Add1~20_combout\,
	combout => \outData~20_combout\);

-- Location: IOIBUF_X0_Y46_N15
\inB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(6),
	o => \inB[6]~input_o\);

-- Location: LCCOMB_X3_Y49_N12
\outData~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~21_combout\ = (\outData~20_combout\ & (((\inB[6]~input_o\) # (!\outData~1_combout\)))) # (!\outData~20_combout\ & (\inA[7]~input_o\ & ((\outData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outData~20_combout\,
	datab => \inA[7]~input_o\,
	datac => \inB[6]~input_o\,
	datad => \outData~1_combout\,
	combout => \outData~21_combout\);

-- Location: LCCOMB_X3_Y49_N14
\outData~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~22_combout\ = (!\Equal4~0_combout\ & \outData~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~0_combout\,
	datad => \outData~21_combout\,
	combout => \outData~22_combout\);

-- Location: IOIBUF_X0_Y50_N15
\inB[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(7),
	o => \inB[7]~input_o\);

-- Location: LCCOMB_X1_Y49_N6
\outData~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~24_combout\ = (\inB[7]~input_o\ & ((\sel[3]~input_o\) # (\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inB[7]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \outData~24_combout\);

-- Location: LCCOMB_X1_Y49_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\sel[0]~input_o\ & (!\sel[3]~input_o\ & (!\sel[1]~input_o\ & !\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y49_N28
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = \Add1~19\ $ (!\inA[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inA[7]~input_o\,
	cin => \Add1~19\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X1_Y49_N12
\outData~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~23_combout\ = (\Add1~21_combout\ & (\Equal1~0_combout\ & (!\sel[1]~input_o\ & !\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~21_combout\,
	datab => \Equal1~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \Equal2~1_combout\,
	combout => \outData~23_combout\);

-- Location: LCCOMB_X2_Y49_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \inA[7]~input_o\ $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inA[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X1_Y49_N26
\outData~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \outData~25_combout\ = (\outData~24_combout\) # ((\outData~23_combout\) # ((\Equal0~0_combout\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outData~24_combout\,
	datab => \Equal0~0_combout\,
	datac => \outData~23_combout\,
	datad => \Add0~14_combout\,
	combout => \outData~25_combout\);

-- Location: LCCOMB_X4_Y49_N6
\outFlagZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outFlagZero~1_combout\ = (\inB[0]~input_o\ & (\inA[0]~input_o\ & (\inB[1]~input_o\ $ (!\inA[1]~input_o\)))) # (!\inB[0]~input_o\ & (!\inA[0]~input_o\ & (\inB[1]~input_o\ $ (!\inA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[0]~input_o\,
	datab => \inB[1]~input_o\,
	datac => \inA[0]~input_o\,
	datad => \inA[1]~input_o\,
	combout => \outFlagZero~1_combout\);

-- Location: LCCOMB_X2_Y49_N30
\outFlagZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outFlagZero~3_combout\ = (\inA[4]~input_o\ & (\inB[4]~input_o\ & (\inB[5]~input_o\ $ (!\inA[5]~input_o\)))) # (!\inA[4]~input_o\ & (!\inB[4]~input_o\ & (\inB[5]~input_o\ $ (!\inA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[4]~input_o\,
	datab => \inB[5]~input_o\,
	datac => \inA[5]~input_o\,
	datad => \inB[4]~input_o\,
	combout => \outFlagZero~3_combout\);

-- Location: LCCOMB_X3_Y49_N2
\outFlagZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outFlagZero~2_combout\ = (\inA[2]~input_o\ & (\inB[2]~input_o\ & (\inA[3]~input_o\ $ (!\inB[3]~input_o\)))) # (!\inA[2]~input_o\ & (!\inB[2]~input_o\ & (\inA[3]~input_o\ $ (!\inB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[2]~input_o\,
	datab => \inA[3]~input_o\,
	datac => \inB[2]~input_o\,
	datad => \inB[3]~input_o\,
	combout => \outFlagZero~2_combout\);

-- Location: LCCOMB_X3_Y49_N20
\outFlagZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outFlagZero~4_combout\ = (\outFlagZero~1_combout\ & (\outFlagZero~3_combout\ & (\Equal4~0_combout\ & \outFlagZero~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outFlagZero~1_combout\,
	datab => \outFlagZero~3_combout\,
	datac => \Equal4~0_combout\,
	datad => \outFlagZero~2_combout\,
	combout => \outFlagZero~4_combout\);

-- Location: LCCOMB_X3_Y49_N16
\outFlagZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outFlagZero~0_combout\ = (\inB[6]~input_o\ & (\inA[6]~input_o\ & (\inA[7]~input_o\ $ (!\inB[7]~input_o\)))) # (!\inB[6]~input_o\ & (!\inA[6]~input_o\ & (\inA[7]~input_o\ $ (!\inB[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[6]~input_o\,
	datab => \inA[7]~input_o\,
	datac => \inB[7]~input_o\,
	datad => \inA[6]~input_o\,
	combout => \outFlagZero~0_combout\);

-- Location: LCCOMB_X3_Y49_N22
\outFlagZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \outFlagZero~5_combout\ = (\Equal2~1_combout\ & ((\Equal1~0_combout\) # ((\outFlagZero~4_combout\ & \outFlagZero~0_combout\)))) # (!\Equal2~1_combout\ & (\outFlagZero~4_combout\ & ((\outFlagZero~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \outFlagZero~4_combout\,
	datac => \Equal1~0_combout\,
	datad => \outFlagZero~0_combout\,
	combout => \outFlagZero~5_combout\);

ww_outData(0) <= \outData[0]~output_o\;

ww_outData(1) <= \outData[1]~output_o\;

ww_outData(2) <= \outData[2]~output_o\;

ww_outData(3) <= \outData[3]~output_o\;

ww_outData(4) <= \outData[4]~output_o\;

ww_outData(5) <= \outData[5]~output_o\;

ww_outData(6) <= \outData[6]~output_o\;

ww_outData(7) <= \outData[7]~output_o\;

ww_outFlagZero <= \outFlagZero~output_o\;
END structure;


