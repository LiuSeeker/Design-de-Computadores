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

-- DATE "10/25/2019 11:06:57"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLevel IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \DB0|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DB1|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \DB1|saidaQ~0_combout\ : std_logic;
SIGNAL \DB1|saidaQ~q\ : std_logic;
SIGNAL \DB1|saida~combout\ : std_logic;
SIGNAL \DB1|saida~clkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~5_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \DB0|saidaQ~q\ : std_logic;
SIGNAL \DB0|saida~combout\ : std_logic;
SIGNAL \DB0|saida~clkctrl_outclk\ : std_logic;
SIGNAL \PC|DOUT[3]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~7\ : std_logic;
SIGNAL \PC|DOUT[4]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~9\ : std_logic;
SIGNAL \PC|DOUT[5]~10_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~11\ : std_logic;
SIGNAL \PC|DOUT[6]~12_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~13\ : std_logic;
SIGNAL \PC|DOUT[7]~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \BR1|registrador~1062_combout\ : std_logic;
SIGNAL \BR1|registrador~807_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~3_cout\ : std_logic;
SIGNAL \ULA1|Add0~4_combout\ : std_logic;
SIGNAL \BR1|registrador~806_q\ : std_logic;
SIGNAL \ULA1|Add0~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~5\ : std_logic;
SIGNAL \ULA1|Add0~6_combout\ : std_logic;
SIGNAL \BR1|registrador~809_q\ : std_logic;
SIGNAL \ULA1|Add0~8_combout\ : std_logic;
SIGNAL \ULA1|Add0~7\ : std_logic;
SIGNAL \ULA1|Add0~10_combout\ : std_logic;
SIGNAL \BR1|registrador~808_q\ : std_logic;
SIGNAL \ULA1|Add0~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~11\ : std_logic;
SIGNAL \ULA1|Add0~12_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY|HEX[6]~6_combout\ : std_logic;
SIGNAL \BR1|registrador~810_q\ : std_logic;
SIGNAL \ULA1|Add0~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~13\ : std_logic;
SIGNAL \ULA1|Add0~15_combout\ : std_logic;
SIGNAL \BR1|registrador~811_q\ : std_logic;
SIGNAL \ULA1|Add0~17_combout\ : std_logic;
SIGNAL \ULA1|Add0~16\ : std_logic;
SIGNAL \ULA1|Add0~18_combout\ : std_logic;
SIGNAL \BR1|registrador~812_q\ : std_logic;
SIGNAL \ULA1|Add0~20_combout\ : std_logic;
SIGNAL \ULA1|Add0~19\ : std_logic;
SIGNAL \ULA1|Add0~21_combout\ : std_logic;
SIGNAL \BR1|registrador~813_q\ : std_logic;
SIGNAL \ULA1|Add0~23_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~24_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DB0|ALT_INV_saida~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DB0|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DB0|saida~combout\);

\DB1|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DB1|saida~combout\);
\DB0|ALT_INV_saida~clkctrl_outclk\ <= NOT \DB0|saida~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|HEX[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~12_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~15_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~18_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~21_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~24_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X1_Y36_N22
\DB1|saidaQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DB1|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \DB1|saidaQ~0_combout\);

-- Location: FF_X1_Y36_N15
\DB1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \DB1|saidaQ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DB1|saidaQ~q\);

-- Location: LCCOMB_X1_Y36_N14
\DB1|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \DB1|saida~combout\ = LCELL((!\KEY[1]~input_o\ & !\DB1|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \DB1|saidaQ~q\,
	combout => \DB1|saida~combout\);

-- Location: CLKCTRL_G1
\DB1|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DB1|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DB1|saida~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X97_Y68_N0
\PC|DOUT[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~5_combout\ = \PC|DOUT\(2) $ (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|DOUT\(2),
	datad => \SW[17]~input_o\,
	combout => \PC|DOUT[2]~5_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X115_Y40_N10
\DB0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DB0|saidaQ~q\);

-- Location: LCCOMB_X114_Y40_N8
\DB0|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \DB0|saida~combout\ = (\DB0|saidaQ~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DB0|saidaQ~q\,
	datad => \KEY[0]~input_o\,
	combout => \DB0|saida~combout\);

-- Location: CLKCTRL_G9
\DB0|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DB0|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DB0|saida~clkctrl_outclk\);

-- Location: FF_X97_Y68_N1
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \PC|DOUT[2]~5_combout\,
	clrn => \DB0|ALT_INV_saida~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LCCOMB_X97_Y68_N16
\PC|DOUT[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~6_combout\ = (\PC|DOUT\(2) & (\PC|DOUT\(3) $ (VCC))) # (!\PC|DOUT\(2) & (\PC|DOUT\(3) & VCC))
-- \PC|DOUT[3]~7\ = CARRY((\PC|DOUT\(2) & \PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datab => \PC|DOUT\(3),
	datad => VCC,
	combout => \PC|DOUT[3]~6_combout\,
	cout => \PC|DOUT[3]~7\);

-- Location: FF_X97_Y68_N17
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \PC|DOUT[3]~6_combout\,
	clrn => \DB0|ALT_INV_saida~clkctrl_outclk\,
	ena => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LCCOMB_X97_Y68_N18
\PC|DOUT[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[4]~8_combout\ = (\PC|DOUT\(4) & (!\PC|DOUT[3]~7\)) # (!\PC|DOUT\(4) & ((\PC|DOUT[3]~7\) # (GND)))
-- \PC|DOUT[4]~9\ = CARRY((!\PC|DOUT[3]~7\) # (!\PC|DOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(4),
	datad => VCC,
	cin => \PC|DOUT[3]~7\,
	combout => \PC|DOUT[4]~8_combout\,
	cout => \PC|DOUT[4]~9\);

-- Location: FF_X97_Y68_N19
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \PC|DOUT[4]~8_combout\,
	clrn => \DB0|ALT_INV_saida~clkctrl_outclk\,
	ena => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LCCOMB_X97_Y68_N20
\PC|DOUT[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[5]~10_combout\ = (\PC|DOUT\(5) & (\PC|DOUT[4]~9\ $ (GND))) # (!\PC|DOUT\(5) & (!\PC|DOUT[4]~9\ & VCC))
-- \PC|DOUT[5]~11\ = CARRY((\PC|DOUT\(5) & !\PC|DOUT[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(5),
	datad => VCC,
	cin => \PC|DOUT[4]~9\,
	combout => \PC|DOUT[5]~10_combout\,
	cout => \PC|DOUT[5]~11\);

-- Location: FF_X97_Y68_N21
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \PC|DOUT[5]~10_combout\,
	clrn => \DB0|ALT_INV_saida~clkctrl_outclk\,
	ena => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LCCOMB_X97_Y68_N22
\PC|DOUT[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[6]~12_combout\ = (\PC|DOUT\(6) & (!\PC|DOUT[5]~11\)) # (!\PC|DOUT\(6) & ((\PC|DOUT[5]~11\) # (GND)))
-- \PC|DOUT[6]~13\ = CARRY((!\PC|DOUT[5]~11\) # (!\PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(6),
	datad => VCC,
	cin => \PC|DOUT[5]~11\,
	combout => \PC|DOUT[6]~12_combout\,
	cout => \PC|DOUT[6]~13\);

-- Location: FF_X97_Y68_N23
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \PC|DOUT[6]~12_combout\,
	clrn => \DB0|ALT_INV_saida~clkctrl_outclk\,
	ena => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LCCOMB_X97_Y68_N24
\PC|DOUT[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[7]~14_combout\ = \PC|DOUT[6]~13\ $ (!\PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(7),
	cin => \PC|DOUT[6]~13\,
	combout => \PC|DOUT[7]~14_combout\);

-- Location: FF_X97_Y68_N25
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \PC|DOUT[7]~14_combout\,
	clrn => \DB0|ALT_INV_saida~clkctrl_outclk\,
	ena => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LCCOMB_X97_Y68_N26
\ROM1|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(4),
	datab => \PC|DOUT\(5),
	datac => \PC|DOUT\(6),
	datad => \PC|DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

-- Location: LCCOMB_X97_Y68_N14
\ROM1|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(7) & (\ROM1|memROM~0_combout\ & \PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(7),
	datac => \ROM1|memROM~0_combout\,
	datad => \PC|DOUT\(2),
	combout => \ROM1|memROM~2_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X97_Y68_N10
\BR1|registrador~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR1|registrador~1062_combout\ = (\SW[16]~input_o\ & (!\PC|DOUT\(7) & (\ROM1|memROM~0_combout\ & !\PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \PC|DOUT\(7),
	datac => \ROM1|memROM~0_combout\,
	datad => \PC|DOUT\(2),
	combout => \BR1|registrador~1062_combout\);

-- Location: FF_X96_Y69_N11
\BR1|registrador~807\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~6_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~807_q\);

-- Location: LCCOMB_X97_Y68_N4
\ROM1|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (\ROM1|memROM~0_combout\ & !\PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|memROM~0_combout\,
	datad => \PC|DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X97_Y69_N24
\ULA1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~0_combout\ = \SW[0]~input_o\ $ (((\ROM1|memROM~1_combout\ & ((\BR1|registrador~807_q\) # (!\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR1|registrador~807_q\,
	datab => \PC|DOUT\(2),
	datac => \ROM1|memROM~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA1|Add0~0_combout\);

-- Location: LCCOMB_X97_Y68_N8
\ROM1|memROM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(7) & (\ROM1|memROM~0_combout\ & !\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(7),
	datac => \ROM1|memROM~0_combout\,
	datad => \PC|DOUT\(2),
	combout => \ROM1|memROM~3_combout\);

-- Location: LCCOMB_X96_Y69_N6
\ULA1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~3_cout\ = CARRY(\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \ULA1|Add0~3_cout\);

-- Location: LCCOMB_X96_Y69_N8
\ULA1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~4_combout\ = (\ROM1|memROM~3_combout\ & ((\ULA1|Add0~1_combout\ & (\ULA1|Add0~3_cout\ & VCC)) # (!\ULA1|Add0~1_combout\ & (!\ULA1|Add0~3_cout\)))) # (!\ROM1|memROM~3_combout\ & ((\ULA1|Add0~1_combout\ & (!\ULA1|Add0~3_cout\)) # 
-- (!\ULA1|Add0~1_combout\ & ((\ULA1|Add0~3_cout\) # (GND)))))
-- \ULA1|Add0~5\ = CARRY((\ROM1|memROM~3_combout\ & (!\ULA1|Add0~1_combout\ & !\ULA1|Add0~3_cout\)) # (!\ROM1|memROM~3_combout\ & ((!\ULA1|Add0~3_cout\) # (!\ULA1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|memROM~3_combout\,
	datab => \ULA1|Add0~1_combout\,
	datad => VCC,
	cin => \ULA1|Add0~3_cout\,
	combout => \ULA1|Add0~4_combout\,
	cout => \ULA1|Add0~5\);

-- Location: FF_X96_Y69_N9
\BR1|registrador~806\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~4_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~806_q\);

-- Location: LCCOMB_X97_Y69_N10
\ULA1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~806_q\ & (\PC|DOUT\(2) & \ROM1|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR1|registrador~806_q\,
	datab => \PC|DOUT\(2),
	datac => \ROM1|memROM~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA1|Add0~1_combout\);

-- Location: LCCOMB_X96_Y69_N10
\ULA1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~6_combout\ = ((\ROM1|memROM~2_combout\ $ (\ULA1|Add0~0_combout\ $ (!\ULA1|Add0~5\)))) # (GND)
-- \ULA1|Add0~7\ = CARRY((\ROM1|memROM~2_combout\ & ((\ULA1|Add0~0_combout\) # (!\ULA1|Add0~5\))) # (!\ROM1|memROM~2_combout\ & (\ULA1|Add0~0_combout\ & !\ULA1|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|memROM~2_combout\,
	datab => \ULA1|Add0~0_combout\,
	datad => VCC,
	cin => \ULA1|Add0~5\,
	combout => \ULA1|Add0~6_combout\,
	cout => \ULA1|Add0~7\);

-- Location: FF_X96_Y69_N15
\BR1|registrador~809\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~12_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~809_q\);

-- Location: LCCOMB_X97_Y69_N20
\ULA1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~8_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~809_q\ & (\PC|DOUT\(2) & \ROM1|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR1|registrador~809_q\,
	datab => \PC|DOUT\(2),
	datac => \ROM1|memROM~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA1|Add0~8_combout\);

-- Location: LCCOMB_X96_Y69_N12
\ULA1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~10_combout\ = (\ULA1|Add0~9_combout\ & (!\ULA1|Add0~7\)) # (!\ULA1|Add0~9_combout\ & ((\ULA1|Add0~7\) # (GND)))
-- \ULA1|Add0~11\ = CARRY((!\ULA1|Add0~7\) # (!\ULA1|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~9_combout\,
	datad => VCC,
	cin => \ULA1|Add0~7\,
	combout => \ULA1|Add0~10_combout\,
	cout => \ULA1|Add0~11\);

-- Location: FF_X96_Y69_N13
\BR1|registrador~808\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~10_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~808_q\);

-- Location: LCCOMB_X97_Y69_N30
\ULA1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~808_q\ & (\PC|DOUT\(2) & \ROM1|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR1|registrador~808_q\,
	datab => \PC|DOUT\(2),
	datac => \ROM1|memROM~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA1|Add0~9_combout\);

-- Location: LCCOMB_X96_Y69_N14
\ULA1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~12_combout\ = ((\ULA1|Add0~8_combout\ $ (\ROM1|memROM~2_combout\ $ (!\ULA1|Add0~11\)))) # (GND)
-- \ULA1|Add0~13\ = CARRY((\ULA1|Add0~8_combout\ & ((\ROM1|memROM~2_combout\) # (!\ULA1|Add0~11\))) # (!\ULA1|Add0~8_combout\ & (\ROM1|memROM~2_combout\ & !\ULA1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~8_combout\,
	datab => \ROM1|memROM~2_combout\,
	datad => VCC,
	cin => \ULA1|Add0~11\,
	combout => \ULA1|Add0~12_combout\,
	cout => \ULA1|Add0~13\);

-- Location: LCCOMB_X96_Y69_N0
\DISPLAY|HEX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[0]~0_combout\ = (\ULA1|Add0~12_combout\ & (\ULA1|Add0~4_combout\ & (\ULA1|Add0~6_combout\ $ (\ULA1|Add0~10_combout\)))) # (!\ULA1|Add0~12_combout\ & (!\ULA1|Add0~6_combout\ & (\ULA1|Add0~4_combout\ $ (\ULA1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~12_combout\,
	datac => \ULA1|Add0~4_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[0]~0_combout\);

-- Location: LCCOMB_X96_Y69_N26
\DISPLAY|HEX[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[1]~1_combout\ = (\ULA1|Add0~6_combout\ & ((\ULA1|Add0~4_combout\ & (\ULA1|Add0~12_combout\)) # (!\ULA1|Add0~4_combout\ & ((\ULA1|Add0~10_combout\))))) # (!\ULA1|Add0~6_combout\ & (\ULA1|Add0~10_combout\ & (\ULA1|Add0~4_combout\ $ 
-- (\ULA1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~4_combout\,
	datac => \ULA1|Add0~12_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[1]~1_combout\);

-- Location: LCCOMB_X96_Y69_N28
\DISPLAY|HEX[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[2]~2_combout\ = (\ULA1|Add0~12_combout\ & (\ULA1|Add0~10_combout\ & ((\ULA1|Add0~6_combout\) # (!\ULA1|Add0~4_combout\)))) # (!\ULA1|Add0~12_combout\ & (\ULA1|Add0~6_combout\ & (!\ULA1|Add0~4_combout\ & !\ULA1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~12_combout\,
	datac => \ULA1|Add0~4_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[2]~2_combout\);

-- Location: LCCOMB_X96_Y69_N24
\DISPLAY|HEX[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[3]~3_combout\ = (\ULA1|Add0~6_combout\ & ((\ULA1|Add0~4_combout\ & ((\ULA1|Add0~10_combout\))) # (!\ULA1|Add0~4_combout\ & (\ULA1|Add0~12_combout\ & !\ULA1|Add0~10_combout\)))) # (!\ULA1|Add0~6_combout\ & (!\ULA1|Add0~12_combout\ & 
-- (\ULA1|Add0~4_combout\ $ (\ULA1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~12_combout\,
	datac => \ULA1|Add0~4_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[3]~3_combout\);

-- Location: LCCOMB_X96_Y69_N2
\DISPLAY|HEX[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[4]~4_combout\ = (\ULA1|Add0~6_combout\ & (!\ULA1|Add0~12_combout\ & (\ULA1|Add0~4_combout\))) # (!\ULA1|Add0~6_combout\ & ((\ULA1|Add0~10_combout\ & (!\ULA1|Add0~12_combout\)) # (!\ULA1|Add0~10_combout\ & ((\ULA1|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~12_combout\,
	datac => \ULA1|Add0~4_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[4]~4_combout\);

-- Location: LCCOMB_X96_Y69_N4
\DISPLAY|HEX[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[5]~5_combout\ = (\ULA1|Add0~6_combout\ & (!\ULA1|Add0~12_combout\ & ((\ULA1|Add0~4_combout\) # (!\ULA1|Add0~10_combout\)))) # (!\ULA1|Add0~6_combout\ & (\ULA1|Add0~4_combout\ & (\ULA1|Add0~12_combout\ $ (!\ULA1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~4_combout\,
	datac => \ULA1|Add0~12_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[5]~5_combout\);

-- Location: LCCOMB_X96_Y69_N30
\DISPLAY|HEX[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY|HEX[6]~6_combout\ = (\ULA1|Add0~4_combout\ & (!\ULA1|Add0~12_combout\ & (\ULA1|Add0~6_combout\ $ (!\ULA1|Add0~10_combout\)))) # (!\ULA1|Add0~4_combout\ & (!\ULA1|Add0~6_combout\ & (\ULA1|Add0~12_combout\ $ (!\ULA1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \ULA1|Add0~4_combout\,
	datac => \ULA1|Add0~12_combout\,
	datad => \ULA1|Add0~10_combout\,
	combout => \DISPLAY|HEX[6]~6_combout\);

-- Location: FF_X96_Y69_N17
\BR1|registrador~810\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~15_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~810_q\);

-- Location: LCCOMB_X97_Y69_N0
\ULA1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~14_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~810_q\ & (\PC|DOUT\(2) & \ROM1|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR1|registrador~810_q\,
	datab => \PC|DOUT\(2),
	datac => \ROM1|memROM~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA1|Add0~14_combout\);

-- Location: LCCOMB_X96_Y69_N16
\ULA1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~15_combout\ = (\ULA1|Add0~14_combout\ & (!\ULA1|Add0~13\)) # (!\ULA1|Add0~14_combout\ & ((\ULA1|Add0~13\) # (GND)))
-- \ULA1|Add0~16\ = CARRY((!\ULA1|Add0~13\) # (!\ULA1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Add0~14_combout\,
	datad => VCC,
	cin => \ULA1|Add0~13\,
	combout => \ULA1|Add0~15_combout\,
	cout => \ULA1|Add0~16\);

-- Location: FF_X96_Y69_N19
\BR1|registrador~811\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~18_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~811_q\);

-- Location: LCCOMB_X97_Y69_N2
\ULA1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~811_q\ & (\ROM1|memROM~1_combout\ & \PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \BR1|registrador~811_q\,
	datac => \ROM1|memROM~1_combout\,
	datad => \PC|DOUT\(2),
	combout => \ULA1|Add0~17_combout\);

-- Location: LCCOMB_X96_Y69_N18
\ULA1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~18_combout\ = (\ULA1|Add0~17_combout\ & (\ULA1|Add0~16\ $ (GND))) # (!\ULA1|Add0~17_combout\ & (!\ULA1|Add0~16\ & VCC))
-- \ULA1|Add0~19\ = CARRY((\ULA1|Add0~17_combout\ & !\ULA1|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~17_combout\,
	datad => VCC,
	cin => \ULA1|Add0~16\,
	combout => \ULA1|Add0~18_combout\,
	cout => \ULA1|Add0~19\);

-- Location: FF_X96_Y69_N21
\BR1|registrador~812\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~21_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~812_q\);

-- Location: LCCOMB_X97_Y69_N12
\ULA1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~20_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~812_q\ & (\ROM1|memROM~1_combout\ & \PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \BR1|registrador~812_q\,
	datac => \ROM1|memROM~1_combout\,
	datad => \PC|DOUT\(2),
	combout => \ULA1|Add0~20_combout\);

-- Location: LCCOMB_X96_Y69_N20
\ULA1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_combout\ = (\ULA1|Add0~20_combout\ & (!\ULA1|Add0~19\)) # (!\ULA1|Add0~20_combout\ & ((\ULA1|Add0~19\) # (GND)))
-- \ULA1|Add0~22\ = CARRY((!\ULA1|Add0~19\) # (!\ULA1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Add0~20_combout\,
	datad => VCC,
	cin => \ULA1|Add0~19\,
	combout => \ULA1|Add0~21_combout\,
	cout => \ULA1|Add0~22\);

-- Location: FF_X96_Y69_N23
\BR1|registrador~813\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DB1|saida~clkctrl_outclk\,
	d => \ULA1|Add0~24_combout\,
	ena => \BR1|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR1|registrador~813_q\);

-- Location: LCCOMB_X97_Y69_N22
\ULA1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~23_combout\ = \SW[0]~input_o\ $ (((\BR1|registrador~813_q\ & (\ROM1|memROM~1_combout\ & \PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \BR1|registrador~813_q\,
	datac => \ROM1|memROM~1_combout\,
	datad => \PC|DOUT\(2),
	combout => \ULA1|Add0~23_combout\);

-- Location: LCCOMB_X96_Y69_N22
\ULA1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA1|Add0~24_combout\ = \ULA1|Add0~22\ $ (!\ULA1|Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ULA1|Add0~23_combout\,
	cin => \ULA1|Add0~22\,
	combout => \ULA1|Add0~24_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


