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

-- DATE "10/04/2019 14:47:23"

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
-- outBaseTempo	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay0	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay1	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay2	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay3	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay4	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outDisplay5	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMudaHor	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIncMin	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIncHor	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraBase	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraMudaHor	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraIncMin	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZeraIncHor	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \endereco[0]~input_o\ : std_logic;
SIGNAL \endereco[3]~input_o\ : std_logic;
SIGNAL \endereco[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \comb~216_combout\ : std_logic;
SIGNAL \outBaseTempo$latch~combout\ : std_logic;
SIGNAL \comb~191_combout\ : std_logic;
SIGNAL \comb~190_combout\ : std_logic;
SIGNAL \outDisplay0$latch~combout\ : std_logic;
SIGNAL \comb~192_combout\ : std_logic;
SIGNAL \comb~193_combout\ : std_logic;
SIGNAL \outDisplay1$latch~combout\ : std_logic;
SIGNAL \comb~194_combout\ : std_logic;
SIGNAL \comb~195_combout\ : std_logic;
SIGNAL \outDisplay2$latch~combout\ : std_logic;
SIGNAL \comb~196_combout\ : std_logic;
SIGNAL \comb~197_combout\ : std_logic;
SIGNAL \outDisplay3$latch~combout\ : std_logic;
SIGNAL \comb~199_combout\ : std_logic;
SIGNAL \comb~198_combout\ : std_logic;
SIGNAL \outDisplay4$latch~combout\ : std_logic;
SIGNAL \comb~201_combout\ : std_logic;
SIGNAL \comb~200_combout\ : std_logic;
SIGNAL \outDisplay5$latch~combout\ : std_logic;
SIGNAL \comb~202_combout\ : std_logic;
SIGNAL \comb~203_combout\ : std_logic;
SIGNAL \outMudaHor$latch~combout\ : std_logic;
SIGNAL \comb~204_combout\ : std_logic;
SIGNAL \comb~205_combout\ : std_logic;
SIGNAL \outIncMin$latch~combout\ : std_logic;
SIGNAL \comb~206_combout\ : std_logic;
SIGNAL \comb~207_combout\ : std_logic;
SIGNAL \outIncHor$latch~combout\ : std_logic;
SIGNAL \comb~215_combout\ : std_logic;
SIGNAL \comb~214_combout\ : std_logic;
SIGNAL \outZeraBase$latch~combout\ : std_logic;
SIGNAL \comb~209_combout\ : std_logic;
SIGNAL \comb~208_combout\ : std_logic;
SIGNAL \outZeraMudaHor$latch~combout\ : std_logic;
SIGNAL \comb~211_combout\ : std_logic;
SIGNAL \comb~210_combout\ : std_logic;
SIGNAL \outZeraIncMin$latch~combout\ : std_logic;
SIGNAL \comb~212_combout\ : std_logic;
SIGNAL \comb~213_combout\ : std_logic;
SIGNAL \outZeraIncHor$latch~combout\ : std_logic;

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

-- Location: IOOBUF_X0_Y50_N23
\outBaseTempo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outBaseTempo$latch~combout\,
	devoe => ww_devoe,
	o => \outBaseTempo~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\outDisplay0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outDisplay0$latch~combout\,
	devoe => ww_devoe,
	o => \outDisplay0~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\outDisplay1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outDisplay1$latch~combout\,
	devoe => ww_devoe,
	o => \outDisplay1~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\outDisplay2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outDisplay2$latch~combout\,
	devoe => ww_devoe,
	o => \outDisplay2~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\outDisplay3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outDisplay3$latch~combout\,
	devoe => ww_devoe,
	o => \outDisplay3~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\outDisplay4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outDisplay4$latch~combout\,
	devoe => ww_devoe,
	o => \outDisplay4~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\outDisplay5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outDisplay5$latch~combout\,
	devoe => ww_devoe,
	o => \outDisplay5~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\outMudaHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMudaHor$latch~combout\,
	devoe => ww_devoe,
	o => \outMudaHor~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\outIncMin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outIncMin$latch~combout\,
	devoe => ww_devoe,
	o => \outIncMin~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\outIncHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outIncHor$latch~combout\,
	devoe => ww_devoe,
	o => \outIncHor~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\outZeraBase~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraBase$latch~combout\,
	devoe => ww_devoe,
	o => \outZeraBase~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\outZeraMudaHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraMudaHor$latch~combout\,
	devoe => ww_devoe,
	o => \outZeraMudaHor~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\outZeraIncMin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraIncMin$latch~combout\,
	devoe => ww_devoe,
	o => \outZeraIncMin~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\outZeraIncHor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outZeraIncHor$latch~combout\,
	devoe => ww_devoe,
	o => \outZeraIncHor~output_o\);

-- Location: IOIBUF_X0_Y45_N22
\endereco[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(1),
	o => \endereco[1]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\endereco[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(0),
	o => \endereco[0]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\endereco[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(3),
	o => \endereco[3]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\endereco[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(2),
	o => \endereco[2]~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\endereco[1]~input_o\ & (!\endereco[0]~input_o\ & (!\endereco[3]~input_o\ & !\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y46_N26
\comb~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~216_combout\ = (\endereco[1]~input_o\ & (((!\endereco[2]~input_o\) # (!\endereco[3]~input_o\)))) # (!\endereco[1]~input_o\ & ((\endereco[0]~input_o\) # ((\endereco[3]~input_o\) # (\endereco[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~216_combout\);

-- Location: LCCOMB_X1_Y46_N28
\outBaseTempo$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outBaseTempo$latch~combout\ = (!\comb~216_combout\ & ((\Equal0~0_combout\) # (\outBaseTempo$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \comb~216_combout\,
	datad => \outBaseTempo$latch~combout\,
	combout => \outBaseTempo$latch~combout\);

-- Location: LCCOMB_X1_Y46_N12
\comb~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~191_combout\ = (!\endereco[1]~input_o\ & (\endereco[0]~input_o\ & (!\endereco[3]~input_o\ & !\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~191_combout\);

-- Location: LCCOMB_X1_Y46_N10
\comb~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~190_combout\ = (\endereco[1]~input_o\ & (((!\endereco[2]~input_o\) # (!\endereco[3]~input_o\)))) # (!\endereco[1]~input_o\ & (((\endereco[3]~input_o\) # (\endereco[2]~input_o\)) # (!\endereco[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~190_combout\);

-- Location: LCCOMB_X1_Y46_N30
\outDisplay0$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outDisplay0$latch~combout\ = (!\comb~190_combout\ & ((\comb~191_combout\) # (\outDisplay0$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~191_combout\,
	datac => \outDisplay0$latch~combout\,
	datad => \comb~190_combout\,
	combout => \outDisplay0$latch~combout\);

-- Location: LCCOMB_X1_Y46_N6
\comb~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~192_combout\ = ((\endereco[3]~input_o\ & ((!\endereco[2]~input_o\))) # (!\endereco[3]~input_o\ & ((\endereco[0]~input_o\) # (\endereco[2]~input_o\)))) # (!\endereco[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~192_combout\);

-- Location: LCCOMB_X1_Y46_N0
\comb~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~193_combout\ = (\endereco[1]~input_o\ & (!\endereco[0]~input_o\ & (!\endereco[3]~input_o\ & !\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~193_combout\);

-- Location: LCCOMB_X1_Y46_N16
\outDisplay1$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outDisplay1$latch~combout\ = (!\comb~192_combout\ & ((\comb~193_combout\) # (\outDisplay1$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~192_combout\,
	datab => \comb~193_combout\,
	datad => \outDisplay1$latch~combout\,
	combout => \outDisplay1$latch~combout\);

-- Location: LCCOMB_X1_Y46_N2
\comb~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~194_combout\ = ((\endereco[3]~input_o\ & ((!\endereco[2]~input_o\))) # (!\endereco[3]~input_o\ & ((\endereco[2]~input_o\) # (!\endereco[0]~input_o\)))) # (!\endereco[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~194_combout\);

-- Location: LCCOMB_X1_Y46_N4
\comb~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~195_combout\ = (\endereco[1]~input_o\ & (\endereco[0]~input_o\ & (!\endereco[3]~input_o\ & !\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~195_combout\);

-- Location: LCCOMB_X1_Y46_N18
\outDisplay2$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outDisplay2$latch~combout\ = (!\comb~194_combout\ & ((\comb~195_combout\) # (\outDisplay2$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~194_combout\,
	datac => \comb~195_combout\,
	datad => \outDisplay2$latch~combout\,
	combout => \outDisplay2$latch~combout\);

-- Location: LCCOMB_X1_Y46_N22
\comb~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~196_combout\ = ((\endereco[1]~input_o\ & ((!\endereco[3]~input_o\))) # (!\endereco[1]~input_o\ & ((\endereco[0]~input_o\) # (\endereco[3]~input_o\)))) # (!\endereco[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~196_combout\);

-- Location: LCCOMB_X1_Y46_N8
\comb~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~197_combout\ = (!\endereco[1]~input_o\ & (!\endereco[0]~input_o\ & (!\endereco[3]~input_o\ & \endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~197_combout\);

-- Location: LCCOMB_X1_Y46_N20
\outDisplay3$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outDisplay3$latch~combout\ = (!\comb~196_combout\ & ((\comb~197_combout\) # (\outDisplay3$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~196_combout\,
	datac => \comb~197_combout\,
	datad => \outDisplay3$latch~combout\,
	combout => \outDisplay3$latch~combout\);

-- Location: LCCOMB_X1_Y44_N10
\comb~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~199_combout\ = (\endereco[0]~input_o\ & (\endereco[2]~input_o\ & (!\endereco[1]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~199_combout\);

-- Location: LCCOMB_X1_Y44_N8
\comb~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~198_combout\ = ((\endereco[1]~input_o\ & ((!\endereco[3]~input_o\))) # (!\endereco[1]~input_o\ & ((\endereco[3]~input_o\) # (!\endereco[0]~input_o\)))) # (!\endereco[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~198_combout\);

-- Location: LCCOMB_X1_Y44_N28
\outDisplay4$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outDisplay4$latch~combout\ = (!\comb~198_combout\ & ((\comb~199_combout\) # (\outDisplay4$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~199_combout\,
	datac => \comb~198_combout\,
	datad => \outDisplay4$latch~combout\,
	combout => \outDisplay4$latch~combout\);

-- Location: LCCOMB_X1_Y44_N6
\comb~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~201_combout\ = (!\endereco[0]~input_o\ & (\endereco[2]~input_o\ & (\endereco[1]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~201_combout\);

-- Location: LCCOMB_X1_Y44_N4
\comb~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~200_combout\ = (((\endereco[0]~input_o\ & !\endereco[3]~input_o\)) # (!\endereco[1]~input_o\)) # (!\endereco[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~200_combout\);

-- Location: LCCOMB_X1_Y44_N30
\outDisplay5$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outDisplay5$latch~combout\ = (!\comb~200_combout\ & ((\comb~201_combout\) # (\outDisplay5$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~201_combout\,
	datab => \comb~200_combout\,
	datac => \outDisplay5$latch~combout\,
	combout => \outDisplay5$latch~combout\);

-- Location: LCCOMB_X1_Y44_N24
\comb~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~202_combout\ = (((!\endereco[0]~input_o\ & !\endereco[3]~input_o\)) # (!\endereco[1]~input_o\)) # (!\endereco[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~202_combout\);

-- Location: LCCOMB_X1_Y44_N26
\comb~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~203_combout\ = (\endereco[0]~input_o\ & (\endereco[2]~input_o\ & (\endereco[1]~input_o\ & !\endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~203_combout\);

-- Location: LCCOMB_X1_Y44_N16
\outMudaHor$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outMudaHor$latch~combout\ = (!\comb~202_combout\ & ((\comb~203_combout\) # (\outMudaHor$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~202_combout\,
	datac => \comb~203_combout\,
	datad => \outMudaHor$latch~combout\,
	combout => \outMudaHor$latch~combout\);

-- Location: LCCOMB_X1_Y44_N12
\comb~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~204_combout\ = ((\endereco[2]~input_o\ & ((!\endereco[1]~input_o\))) # (!\endereco[2]~input_o\ & ((\endereco[0]~input_o\) # (\endereco[1]~input_o\)))) # (!\endereco[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~204_combout\);

-- Location: LCCOMB_X1_Y44_N22
\comb~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~205_combout\ = (!\endereco[0]~input_o\ & (!\endereco[2]~input_o\ & (!\endereco[1]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~205_combout\);

-- Location: LCCOMB_X1_Y44_N18
\outIncMin$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outIncMin$latch~combout\ = (!\comb~204_combout\ & ((\comb~205_combout\) # (\outIncMin$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~204_combout\,
	datac => \comb~205_combout\,
	datad => \outIncMin$latch~combout\,
	combout => \outIncMin$latch~combout\);

-- Location: LCCOMB_X1_Y44_N0
\comb~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~206_combout\ = ((\endereco[2]~input_o\ & ((!\endereco[1]~input_o\))) # (!\endereco[2]~input_o\ & ((\endereco[1]~input_o\) # (!\endereco[0]~input_o\)))) # (!\endereco[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~206_combout\);

-- Location: LCCOMB_X1_Y44_N2
\comb~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~207_combout\ = (\endereco[0]~input_o\ & (!\endereco[2]~input_o\ & (!\endereco[1]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~207_combout\);

-- Location: LCCOMB_X1_Y44_N20
\outIncHor$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outIncHor$latch~combout\ = (!\comb~206_combout\ & ((\comb~207_combout\) # (\outIncHor$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~206_combout\,
	datac => \comb~207_combout\,
	datad => \outIncHor$latch~combout\,
	combout => \outIncHor$latch~combout\);

-- Location: LCCOMB_X1_Y48_N10
\comb~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~215_combout\ = (!\endereco[0]~input_o\ & (!\endereco[2]~input_o\ & (\endereco[1]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~215_combout\);

-- Location: LCCOMB_X1_Y48_N24
\comb~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~214_combout\ = (((\endereco[0]~input_o\ & !\endereco[2]~input_o\)) # (!\endereco[3]~input_o\)) # (!\endereco[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~214_combout\);

-- Location: LCCOMB_X1_Y48_N20
\outZeraBase$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraBase$latch~combout\ = (!\comb~214_combout\ & ((\comb~215_combout\) # (\outZeraBase$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~215_combout\,
	datab => \comb~214_combout\,
	datad => \outZeraBase$latch~combout\,
	combout => \outZeraBase$latch~combout\);

-- Location: LCCOMB_X1_Y45_N10
\comb~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~209_combout\ = (\endereco[1]~input_o\ & (\endereco[0]~input_o\ & (\endereco[3]~input_o\ & !\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~209_combout\);

-- Location: LCCOMB_X1_Y45_N24
\comb~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~208_combout\ = (((!\endereco[0]~input_o\ & !\endereco[2]~input_o\)) # (!\endereco[3]~input_o\)) # (!\endereco[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[1]~input_o\,
	datab => \endereco[0]~input_o\,
	datac => \endereco[3]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \comb~208_combout\);

-- Location: LCCOMB_X1_Y45_N20
\outZeraMudaHor$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraMudaHor$latch~combout\ = (!\comb~208_combout\ & ((\comb~209_combout\) # (\outZeraMudaHor$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~209_combout\,
	datab => \comb~208_combout\,
	datad => \outZeraMudaHor$latch~combout\,
	combout => \outZeraMudaHor$latch~combout\);

-- Location: LCCOMB_X1_Y48_N26
\comb~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~211_combout\ = (!\endereco[0]~input_o\ & (\endereco[2]~input_o\ & (!\endereco[1]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~211_combout\);

-- Location: LCCOMB_X1_Y48_N16
\comb~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~210_combout\ = (((\endereco[0]~input_o\ & !\endereco[1]~input_o\)) # (!\endereco[3]~input_o\)) # (!\endereco[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~210_combout\);

-- Location: LCCOMB_X1_Y48_N22
\outZeraIncMin$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraIncMin$latch~combout\ = (!\comb~210_combout\ & ((\comb~211_combout\) # (\outZeraIncMin$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~211_combout\,
	datab => \comb~210_combout\,
	datac => \outZeraIncMin$latch~combout\,
	combout => \outZeraIncMin$latch~combout\);

-- Location: LCCOMB_X1_Y48_N12
\comb~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~212_combout\ = (((!\endereco[0]~input_o\ & !\endereco[1]~input_o\)) # (!\endereco[3]~input_o\)) # (!\endereco[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~212_combout\);

-- Location: LCCOMB_X1_Y48_N14
\comb~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~213_combout\ = (\endereco[0]~input_o\ & (\endereco[2]~input_o\ & (!\endereco[1]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~input_o\,
	datab => \endereco[2]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[3]~input_o\,
	combout => \comb~213_combout\);

-- Location: LCCOMB_X1_Y48_N0
\outZeraIncHor$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outZeraIncHor$latch~combout\ = (!\comb~212_combout\ & ((\comb~213_combout\) # (\outZeraIncHor$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~212_combout\,
	datac => \comb~213_combout\,
	datad => \outZeraIncHor$latch~combout\,
	combout => \outZeraIncHor$latch~combout\);

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


