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

-- DATE "08/28/2019 09:18:49"

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

ENTITY 	decodificador7seg IS
    PORT (
	dadoHex : IN std_logic_vector(3 DOWNTO 0);
	hab : IN std_logic;
	saida7seg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END decodificador7seg;

-- Design Ports Information
-- saida7seg[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoHex[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoHex[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoHex[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoHex[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decodificador7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dadoHex : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hab : std_logic;
SIGNAL ww_saida7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \saida7seg[0]~output_o\ : std_logic;
SIGNAL \saida7seg[1]~output_o\ : std_logic;
SIGNAL \saida7seg[2]~output_o\ : std_logic;
SIGNAL \saida7seg[3]~output_o\ : std_logic;
SIGNAL \saida7seg[4]~output_o\ : std_logic;
SIGNAL \saida7seg[5]~output_o\ : std_logic;
SIGNAL \saida7seg[6]~output_o\ : std_logic;
SIGNAL \hab~input_o\ : std_logic;
SIGNAL \dadoHex[3]~input_o\ : std_logic;
SIGNAL \dadoHex[1]~input_o\ : std_logic;
SIGNAL \dadoHex[0]~input_o\ : std_logic;
SIGNAL \dadoHex[2]~input_o\ : std_logic;
SIGNAL \rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \rascSaida7seg[1]~4_combout\ : std_logic;
SIGNAL \rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \rascSaida7seg[2]~6_combout\ : std_logic;
SIGNAL \rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \rascSaida7seg[3]~8_combout\ : std_logic;
SIGNAL \rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \rascSaida7seg[4]~10_combout\ : std_logic;
SIGNAL \rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \rascSaida7seg[5]~12_combout\ : std_logic;
SIGNAL \rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \rascSaida7seg[6]~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dadoHex <= dadoHex;
ww_hab <= hab;
saida7seg <= ww_saida7seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y34_N9
\saida7seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida7seg[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\saida7seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \saida7seg[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\saida7seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \saida7seg[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\saida7seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[3]~8_combout\,
	devoe => ww_devoe,
	o => \saida7seg[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\saida7seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[4]~10_combout\,
	devoe => ww_devoe,
	o => \saida7seg[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\saida7seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[5]~12_combout\,
	devoe => ww_devoe,
	o => \saida7seg[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\saida7seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rascSaida7seg[6]~14_combout\,
	devoe => ww_devoe,
	o => \saida7seg[6]~output_o\);

-- Location: IOIBUF_X0_Y31_N15
\hab~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hab,
	o => \hab~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\dadoHex[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoHex(3),
	o => \dadoHex[3]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\dadoHex[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoHex(1),
	o => \dadoHex[1]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\dadoHex[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoHex(0),
	o => \dadoHex[0]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\dadoHex[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoHex(2),
	o => \dadoHex[2]~input_o\);

-- Location: LCCOMB_X1_Y34_N24
\rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[0]~0_combout\ = (\dadoHex[3]~input_o\ & (\dadoHex[0]~input_o\ & (\dadoHex[1]~input_o\ $ (\dadoHex[2]~input_o\)))) # (!\dadoHex[3]~input_o\ & (!\dadoHex[1]~input_o\ & (\dadoHex[0]~input_o\ $ (\dadoHex[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X1_Y34_N18
\rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[0]~1_combout\ = (\rascSaida7seg[0]~0_combout\) # (!\hab~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hab~input_o\,
	datad => \rascSaida7seg[0]~0_combout\,
	combout => \rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X1_Y34_N6
\rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[1]~3_combout\ = (\dadoHex[3]~input_o\ & (\dadoHex[1]~input_o\ & (\dadoHex[0]~input_o\ & !\dadoHex[2]~input_o\))) # (!\dadoHex[3]~input_o\ & (\dadoHex[2]~input_o\ & (\dadoHex[1]~input_o\ $ (\dadoHex[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X1_Y34_N28
\rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[1]~2_combout\ = (\dadoHex[3]~input_o\ & (\dadoHex[2]~input_o\ & ((\dadoHex[1]~input_o\) # (!\dadoHex[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X1_Y34_N16
\rascSaida7seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[1]~4_combout\ = (\rascSaida7seg[1]~3_combout\) # ((\rascSaida7seg[1]~2_combout\) # (!\hab~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rascSaida7seg[1]~3_combout\,
	datac => \hab~input_o\,
	datad => \rascSaida7seg[1]~2_combout\,
	combout => \rascSaida7seg[1]~4_combout\);

-- Location: LCCOMB_X1_Y34_N26
\rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[2]~5_combout\ = (!\dadoHex[3]~input_o\ & (\dadoHex[1]~input_o\ & (!\dadoHex[0]~input_o\ & !\dadoHex[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X1_Y34_N20
\rascSaida7seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[2]~6_combout\ = (\rascSaida7seg[2]~5_combout\) # ((\rascSaida7seg[1]~2_combout\) # (!\hab~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rascSaida7seg[2]~5_combout\,
	datac => \hab~input_o\,
	datad => \rascSaida7seg[1]~2_combout\,
	combout => \rascSaida7seg[2]~6_combout\);

-- Location: LCCOMB_X1_Y34_N30
\rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[3]~7_combout\ = (\dadoHex[1]~input_o\ & ((\dadoHex[0]~input_o\ & ((\dadoHex[2]~input_o\))) # (!\dadoHex[0]~input_o\ & (\dadoHex[3]~input_o\ & !\dadoHex[2]~input_o\)))) # (!\dadoHex[1]~input_o\ & (!\dadoHex[3]~input_o\ & 
-- (\dadoHex[0]~input_o\ $ (\dadoHex[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X1_Y34_N0
\rascSaida7seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[3]~8_combout\ = (\rascSaida7seg[3]~7_combout\) # (!\hab~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rascSaida7seg[3]~7_combout\,
	datac => \hab~input_o\,
	combout => \rascSaida7seg[3]~8_combout\);

-- Location: LCCOMB_X1_Y34_N2
\rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[4]~9_combout\ = (\dadoHex[1]~input_o\ & (!\dadoHex[3]~input_o\ & (\dadoHex[0]~input_o\))) # (!\dadoHex[1]~input_o\ & ((\dadoHex[2]~input_o\ & (!\dadoHex[3]~input_o\)) # (!\dadoHex[2]~input_o\ & ((\dadoHex[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X1_Y34_N12
\rascSaida7seg[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[4]~10_combout\ = (\rascSaida7seg[4]~9_combout\) # (!\hab~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hab~input_o\,
	datad => \rascSaida7seg[4]~9_combout\,
	combout => \rascSaida7seg[4]~10_combout\);

-- Location: LCCOMB_X1_Y34_N22
\rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[5]~11_combout\ = (\dadoHex[1]~input_o\ & (!\dadoHex[0]~input_o\ & !\dadoHex[2]~input_o\)) # (!\dadoHex[1]~input_o\ & (\dadoHex[0]~input_o\ & \dadoHex[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X1_Y34_N8
\rascSaida7seg[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[5]~12_combout\ = ((\dadoHex[0]~input_o\ & (\rascSaida7seg[5]~11_combout\ $ (!\dadoHex[3]~input_o\))) # (!\dadoHex[0]~input_o\ & (\rascSaida7seg[5]~11_combout\ & !\dadoHex[3]~input_o\))) # (!\hab~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hab~input_o\,
	datab => \dadoHex[0]~input_o\,
	datac => \rascSaida7seg[5]~11_combout\,
	datad => \dadoHex[3]~input_o\,
	combout => \rascSaida7seg[5]~12_combout\);

-- Location: LCCOMB_X1_Y34_N10
\rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[6]~13_combout\ = (\dadoHex[0]~input_o\ & (!\dadoHex[3]~input_o\ & (\dadoHex[1]~input_o\ $ (!\dadoHex[2]~input_o\)))) # (!\dadoHex[0]~input_o\ & (!\dadoHex[1]~input_o\ & (\dadoHex[3]~input_o\ $ (!\dadoHex[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dadoHex[3]~input_o\,
	datab => \dadoHex[1]~input_o\,
	datac => \dadoHex[0]~input_o\,
	datad => \dadoHex[2]~input_o\,
	combout => \rascSaida7seg[6]~13_combout\);

-- Location: LCCOMB_X1_Y34_N4
\rascSaida7seg[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rascSaida7seg[6]~14_combout\ = (\rascSaida7seg[6]~13_combout\) # (!\hab~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hab~input_o\,
	datad => \rascSaida7seg[6]~13_combout\,
	combout => \rascSaida7seg[6]~14_combout\);

ww_saida7seg(0) <= \saida7seg[0]~output_o\;

ww_saida7seg(1) <= \saida7seg[1]~output_o\;

ww_saida7seg(2) <= \saida7seg[2]~output_o\;

ww_saida7seg(3) <= \saida7seg[3]~output_o\;

ww_saida7seg(4) <= \saida7seg[4]~output_o\;

ww_saida7seg(5) <= \saida7seg[5]~output_o\;

ww_saida7seg(6) <= \saida7seg[6]~output_o\;
END structure;


