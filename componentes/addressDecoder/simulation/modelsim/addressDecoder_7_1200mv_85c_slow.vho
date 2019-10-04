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

-- DATE "10/04/2019 14:50:49"

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

ENTITY 	addressDecoder IS
    PORT (
	endereco : IN std_logic_vector(3 DOWNTO 0);
	outBaseTempo : OUT std_logic;
	outDisplay0 : OUT std_logic;
	outDisplay1 : OUT std_logic;
	outDisplay2 : OUT std_logic;
	outDisplay3 : OUT std_logic;
	outDisplay4 : OUT std_logic;
	outDisplay5 : OUT std_logic;
	outMudaHor : OUT std_logic;
	outIncMin : OUT std_logic;
	outIncHor : OUT std_logic;
	outZeraBase : OUT std_logic;
	outZeraMudaHor : OUT std_logic;
	outZeraIncMin : OUT std_logic;
	outZeraIncHor : OUT std_logic
	);
END addressDecoder;

-- Design Ports Information
-- outBaseTempo	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay0	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay1	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay2	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay3	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay4	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay5	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMudaHor	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIncMin	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIncHor	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraBase	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraMudaHor	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraIncMin	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraIncHor	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addressDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outBaseTempo : std_logic;
SIGNAL ww_outDisplay0 : std_logic;
SIGNAL ww_outDisplay1 : std_logic;
SIGNAL ww_outDisplay2 : std_logic;
SIGNAL ww_outDisplay3 : std_logic;
SIGNAL ww_outDisplay4 : std_logic;
SIGNAL ww_outDisplay5 : std_logic;
SIGNAL ww_outMudaHor : std_logic;
SIGNAL ww_outIncMin : std_logic;
SIGNAL ww_outIncHor : std_logic;
SIGNAL ww_outZeraBase : std_logic;
SIGNAL ww_outZeraMudaHor : std_logic;
SIGNAL ww_outZeraIncMin : std_logic;
SIGNAL ww_outZeraIncHor : std_logic;
SIGNAL \outBaseTempo~output_o\ : std_logic;
SIGNAL \outDisplay0~output_o\ : std_logic;
SIGNAL \outDisplay1~output_o\ : std_logic;
SIGNAL \outDisplay2~output_o\ : std_logic;
SIGNAL \outDisplay3~output_o\ : std_logic;
SIGNAL \outDisplay4~output_o\ : std_logic;
SIGNAL \outDisplay5~output_o\ : std_logic;
SIGNAL \outMudaHor~output_o\ : std_logic;
SIGNAL \outIncMin~output_o\ : std_logic;
SIGNAL \outIncHor~output_o\ : std_logic;
SIGNAL \outZeraBase~output_o\ : std_logic;
SIGNAL \outZeraMudaHor~output_o\ : std_logic;
SIGNAL \outZeraIncMin~output_o\ : std_logic;
SIGNAL \outZeraIncHor~output_o\ : std_logic;
SIGNAL \endereco[1]~input_o\ : std_logic;
SIGNAL \endereco[2]~input_o\ : std_logic;
SIGNAL \endereco[0]~input_o\ : std_logic;
SIGNAL \endereco[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \outIncHor~0_combout\ : std_logic;
SIGNAL \outZeraBase~0_combout\ : std_logic;
SIGNAL \outZeraMudaHor~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \outZeraIncHor~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_endereco <= endereco;
outBaseTempo <= ww_outBaseTempo;
outDisplay0 <= ww_outDisplay0;
outDisplay1 <= ww_outDisplay1;
outDisplay2 <= ww_outDisplay2;
outDisplay3 <= ww_outDisplay3;
outDisplay4 <= ww_outDisplay4;
outDisplay5 <= ww_outDisplay5;
outMudaHor <= ww_outMudaHor;
outIncMin <= ww_outIncMin;
outIncHor <= ww_outIncHor;
outZeraBase <= ww_outZeraBase;
outZeraMudaHor <= ww_outZeraMudaHor;
outZeraIncMin <= ww_outZeraIncMin;
outZeraIncHor <= ww_outZeraIncHor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N23
\outBaseTempo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \outBaseTempo~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\outDisplay0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \outDisplay0~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\outDisplay1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \outDisplay1~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\outDisplay2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => \outDisplay2~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\outDisplay3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \outDisplay3~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\outDisplay4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~5_combout\,
	devoe => ww_devoe,
	o => \outDisplay4~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\outDisplay5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~6_combout\,
	devoe => ww_devoe,
	o => \outDisplay5~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\outMudaHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~7_combout\,
	devoe => ww_devoe,
	o => \outMudaHor~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\outIncMin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => \outIncMin~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\outIncHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outIncHor~0_combout\,
	devoe => ww_devoe,
	o => \outIncHor~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\outZeraBase~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraBase~0_combout\,
	devoe => ww_devoe,
	o => \outZeraBase~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\outZeraMudaHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraMudaHor~0_combout\,
	devoe => ww_devoe,
	o => \outZeraMudaHor~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\outZeraIncMin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~9_combout\,
	devoe => ww_devoe,
	o => \outZeraIncMin~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\outZeraIncHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraIncHor~0_combout\,
	devoe => ww_devoe,
	o => \outZeraIncHor~output_o\);

-- Location: IOIBUF_X0_Y29_N15
\endereco[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(1),
	o => \endereco[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\endereco[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(2),
	o => \endereco[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\endereco[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(0),
	o => \endereco[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\endereco[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(3),
	o => \endereco[3]~input_o\);

-- Location: LCCOMB_X1_Y34_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y34_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y34_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y34_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X1_Y34_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\endereco[1]~input_o\ & (\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y34_N18
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\endereco[1]~input_o\ & (\endereco[2]~input_o\ & (\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X1_Y34_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\endereco[1]~input_o\ & (\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X1_Y34_N22
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\endereco[1]~input_o\ & (\endereco[2]~input_o\ & (\endereco[0]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X1_Y34_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X1_Y34_N2
\outIncHor~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outIncHor~0_combout\ = (!\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (\endereco[0]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \outIncHor~0_combout\);

-- Location: LCCOMB_X1_Y34_N20
\outZeraBase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraBase~0_combout\ = (\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \outZeraBase~0_combout\);

-- Location: LCCOMB_X1_Y34_N14
\outZeraMudaHor~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraMudaHor~0_combout\ = (\endereco[1]~input_o\ & (!\endereco[2]~input_o\ & (\endereco[0]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \outZeraMudaHor~0_combout\);

-- Location: LCCOMB_X1_Y34_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\endereco[1]~input_o\ & (\endereco[2]~input_o\ & (!\endereco[0]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X1_Y34_N26
\outZeraIncHor~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraIncHor~0_combout\ = (!\endereco[1]~input_o\ & (\endereco[2]~input_o\ & (\endereco[0]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[0]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \outZeraIncHor~0_combout\);

ww_outBaseTempo <= \outBaseTempo~output_o\;

ww_outDisplay0 <= \outDisplay0~output_o\;

ww_outDisplay1 <= \outDisplay1~output_o\;

ww_outDisplay2 <= \outDisplay2~output_o\;

ww_outDisplay3 <= \outDisplay3~output_o\;

ww_outDisplay4 <= \outDisplay4~output_o\;

ww_outDisplay5 <= \outDisplay5~output_o\;

ww_outMudaHor <= \outMudaHor~output_o\;

ww_outIncMin <= \outIncMin~output_o\;

ww_outIncHor <= \outIncHor~output_o\;

ww_outZeraBase <= \outZeraBase~output_o\;

ww_outZeraMudaHor <= \outZeraMudaHor~output_o\;

ww_outZeraIncMin <= \outZeraIncMin~output_o\;

ww_outZeraIncHor <= \outZeraIncHor~output_o\;
END structure;


