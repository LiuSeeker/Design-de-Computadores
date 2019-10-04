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

-- DATE "10/04/2019 11:40:27"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	instrucao : IN std_logic_vector(15 DOWNTO 0);
	dataRead : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	outAdress : OUT std_logic_vector(7 DOWNTO 0);
	dataWrite : OUT std_logic_vector(3 DOWNTO 0);
	ioAdress : OUT std_logic_vector(3 DOWNTO 0)
	);
END processador;

-- Design Ports Information
-- outAdress[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outAdress[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataWrite[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataWrite[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataWrite[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataWrite[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ioAdress[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ioAdress[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ioAdress[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ioAdress[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[11]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[14]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataRead[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataRead[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataRead[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataRead[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instrucao : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dataRead : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_outAdress : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataWrite : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ioAdress : std_logic_vector(3 DOWNTO 0);
SIGNAL \UC|outDemux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outAdress[0]~output_o\ : std_logic;
SIGNAL \outAdress[1]~output_o\ : std_logic;
SIGNAL \outAdress[2]~output_o\ : std_logic;
SIGNAL \outAdress[3]~output_o\ : std_logic;
SIGNAL \outAdress[4]~output_o\ : std_logic;
SIGNAL \outAdress[5]~output_o\ : std_logic;
SIGNAL \outAdress[6]~output_o\ : std_logic;
SIGNAL \outAdress[7]~output_o\ : std_logic;
SIGNAL \dataWrite[0]~output_o\ : std_logic;
SIGNAL \dataWrite[1]~output_o\ : std_logic;
SIGNAL \dataWrite[2]~output_o\ : std_logic;
SIGNAL \dataWrite[3]~output_o\ : std_logic;
SIGNAL \ioAdress[0]~output_o\ : std_logic;
SIGNAL \ioAdress[1]~output_o\ : std_logic;
SIGNAL \ioAdress[2]~output_o\ : std_logic;
SIGNAL \ioAdress[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC|data_out[0]~8_combout\ : std_logic;
SIGNAL \instrucao[4]~input_o\ : std_logic;
SIGNAL \instrucao[15]~input_o\ : std_logic;
SIGNAL \instrucao[12]~input_o\ : std_logic;
SIGNAL \instrucao[13]~input_o\ : std_logic;
SIGNAL \instrucao[14]~input_o\ : std_logic;
SIGNAL \UC|comb~30_combout\ : std_logic;
SIGNAL \UC|comb~29_combout\ : std_logic;
SIGNAL \UC|comb~24_combout\ : std_logic;
SIGNAL \UC|comb~25_combout\ : std_logic;
SIGNAL \ULA|Equal0~0_combout\ : std_logic;
SIGNAL \UC|comb~32_combout\ : std_logic;
SIGNAL \UC|comb~31_combout\ : std_logic;
SIGNAL \ULA|flag~4_combout\ : std_logic;
SIGNAL \instrucao[1]~input_o\ : std_logic;
SIGNAL \instrucao[0]~input_o\ : std_logic;
SIGNAL \instrucao[6]~input_o\ : std_logic;
SIGNAL \UC|comb~26_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \UC|outMuxPosULA~combout\ : std_logic;
SIGNAL \dataRead[1]~input_o\ : std_logic;
SIGNAL \ULA|outData[1]~4_combout\ : std_logic;
SIGNAL \ULA|outData[3]~1_combout\ : std_logic;
SIGNAL \ULA|outData[0]~3_combout\ : std_logic;
SIGNAL \ULA|outData[1]~5_combout\ : std_logic;
SIGNAL \ULA|Equal0~1_combout\ : std_logic;
SIGNAL \ULA|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \MuxPosULA|b[1]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~29feeder_combout\ : std_logic;
SIGNAL \instrucao[5]~input_o\ : std_logic;
SIGNAL \UC|comb~28_combout\ : std_logic;
SIGNAL \UC|comb~27_combout\ : std_logic;
SIGNAL \UC|outBancoRegistradores~combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~60_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~29_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~63_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~37_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~62_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~25_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~33feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~61_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~33_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~45_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~46_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~21feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~67_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~21_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~64_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~17_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~66_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~9_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~13feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~65_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~13_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~47_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~48_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~49_combout\ : std_logic;
SIGNAL \dataRead[0]~input_o\ : std_logic;
SIGNAL \ULA|outData[0]~0_combout\ : std_logic;
SIGNAL \ULA|outData[0]~2_combout\ : std_logic;
SIGNAL \MuxPosULA|b[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~28feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~28_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~36_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~24_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~32feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~32_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~40_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~41_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~20feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~20_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~16_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~8_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~12feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~12_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~42_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~43_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~44_combout\ : std_logic;
SIGNAL \ULA|flag~0_combout\ : std_logic;
SIGNAL \dataRead[2]~input_o\ : std_logic;
SIGNAL \instrucao[2]~input_o\ : std_logic;
SIGNAL \ULA|outData[2]~6_combout\ : std_logic;
SIGNAL \ULA|outData[2]~7_combout\ : std_logic;
SIGNAL \MuxPosULA|b[2]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~22feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~22_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~18_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~10_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~14feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~14_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~52_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~53_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~30feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~30_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~38_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~26_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~34feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~34_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~50_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~51_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~54_combout\ : std_logic;
SIGNAL \instrucao[3]~input_o\ : std_logic;
SIGNAL \dataRead[3]~input_o\ : std_logic;
SIGNAL \ULA|outData[3]~8_combout\ : std_logic;
SIGNAL \ULA|outData[3]~9_combout\ : std_logic;
SIGNAL \ULA|outData[3]~10_combout\ : std_logic;
SIGNAL \MuxPosULA|b[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~23feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~23_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~19_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~11_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~15feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~15_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~57_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~58_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~31feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~31_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~39_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~27_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~35feeder_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~35_q\ : std_logic;
SIGNAL \BancoRegistradores|banco~55_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~56_combout\ : std_logic;
SIGNAL \BancoRegistradores|banco~59_combout\ : std_logic;
SIGNAL \ULA|flag~1_combout\ : std_logic;
SIGNAL \ULA|flag~2_combout\ : std_logic;
SIGNAL \ULA|flag~3_combout\ : std_logic;
SIGNAL \ULA|flag~combout\ : std_logic;
SIGNAL \UC|comb~21_combout\ : std_logic;
SIGNAL \UC|comb~20_combout\ : std_logic;
SIGNAL \UC|outAndPC~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \PC|data_out[0]~9\ : std_logic;
SIGNAL \PC|data_out[1]~10_combout\ : std_logic;
SIGNAL \PC|data_out[1]~11\ : std_logic;
SIGNAL \PC|data_out[2]~12_combout\ : std_logic;
SIGNAL \PC|data_out[2]~13\ : std_logic;
SIGNAL \PC|data_out[3]~14_combout\ : std_logic;
SIGNAL \instrucao[7]~input_o\ : std_logic;
SIGNAL \PC|data_out[3]~15\ : std_logic;
SIGNAL \PC|data_out[4]~16_combout\ : std_logic;
SIGNAL \instrucao[8]~input_o\ : std_logic;
SIGNAL \PC|data_out[4]~17\ : std_logic;
SIGNAL \PC|data_out[5]~18_combout\ : std_logic;
SIGNAL \instrucao[9]~input_o\ : std_logic;
SIGNAL \PC|data_out[5]~19\ : std_logic;
SIGNAL \PC|data_out[6]~20_combout\ : std_logic;
SIGNAL \instrucao[10]~input_o\ : std_logic;
SIGNAL \PC|data_out[6]~21\ : std_logic;
SIGNAL \PC|data_out[7]~22_combout\ : std_logic;
SIGNAL \instrucao[11]~input_o\ : std_logic;
SIGNAL \UC|comb~22_combout\ : std_logic;
SIGNAL \UC|comb~23_combout\ : std_logic;
SIGNAL \UC|outDemux~combout\ : std_logic;
SIGNAL \UC|outDemux~clkctrl_outclk\ : std_logic;
SIGNAL \PC|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Tristate|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UC|outULA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ULA|outData\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_instrucao <= instrucao;
ww_dataRead <= dataRead;
ww_CLK <= CLK;
outAdress <= ww_outAdress;
dataWrite <= ww_dataWrite;
ioAdress <= ww_ioAdress;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\UC|outDemux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UC|outDemux~combout\);

\ULA|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ULA|Equal0~1_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N9
\outAdress[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(0),
	devoe => ww_devoe,
	o => \outAdress[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\outAdress[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(1),
	devoe => ww_devoe,
	o => \outAdress[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\outAdress[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(2),
	devoe => ww_devoe,
	o => \outAdress[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\outAdress[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(3),
	devoe => ww_devoe,
	o => \outAdress[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\outAdress[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(4),
	devoe => ww_devoe,
	o => \outAdress[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\outAdress[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(5),
	devoe => ww_devoe,
	o => \outAdress[5]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\outAdress[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(6),
	devoe => ww_devoe,
	o => \outAdress[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\outAdress[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(7),
	devoe => ww_devoe,
	o => \outAdress[7]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\dataWrite[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tristate|output\(0),
	devoe => ww_devoe,
	o => \dataWrite[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\dataWrite[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tristate|output\(1),
	devoe => ww_devoe,
	o => \dataWrite[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\dataWrite[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tristate|output\(2),
	devoe => ww_devoe,
	o => \dataWrite[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\dataWrite[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tristate|output\(3),
	devoe => ww_devoe,
	o => \dataWrite[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\ioAdress[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instrucao[0]~input_o\,
	devoe => ww_devoe,
	o => \ioAdress[0]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\ioAdress[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instrucao[1]~input_o\,
	devoe => ww_devoe,
	o => \ioAdress[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\ioAdress[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instrucao[2]~input_o\,
	devoe => ww_devoe,
	o => \ioAdress[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\ioAdress[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instrucao[3]~input_o\,
	devoe => ww_devoe,
	o => \ioAdress[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X53_Y69_N8
\PC|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[0]~8_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|data_out[0]~9\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|data_out[0]~8_combout\,
	cout => \PC|data_out[0]~9\);

-- Location: IOIBUF_X60_Y73_N22
\instrucao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(4),
	o => \instrucao[4]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\instrucao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(15),
	o => \instrucao[15]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\instrucao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(12),
	o => \instrucao[12]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\instrucao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(13),
	o => \instrucao[13]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\instrucao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(14),
	o => \instrucao[14]~input_o\);

-- Location: LCCOMB_X57_Y72_N2
\UC|comb~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~30_combout\ = (\instrucao[12]~input_o\ & (!\instrucao[15]~input_o\ & ((\instrucao[13]~input_o\) # (!\instrucao[14]~input_o\)))) # (!\instrucao[12]~input_o\ & (!\instrucao[14]~input_o\ & (\instrucao[15]~input_o\ $ (\instrucao[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~30_combout\);

-- Location: LCCOMB_X57_Y72_N24
\UC|comb~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~29_combout\ = (!\instrucao[15]~input_o\ & ((\instrucao[12]~input_o\ & (!\instrucao[13]~input_o\ & \instrucao[14]~input_o\)) # (!\instrucao[12]~input_o\ & ((\instrucao[14]~input_o\) # (!\instrucao[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~29_combout\);

-- Location: LCCOMB_X56_Y72_N18
\UC|outULA[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outULA\(1) = (!\UC|comb~29_combout\ & ((\UC|comb~30_combout\) # (\UC|outULA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|comb~30_combout\,
	datab => \UC|comb~29_combout\,
	datad => \UC|outULA\(1),
	combout => \UC|outULA\(1));

-- Location: LCCOMB_X57_Y72_N0
\UC|comb~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~24_combout\ = (!\instrucao[15]~input_o\ & ((\instrucao[12]~input_o\ & ((\instrucao[14]~input_o\) # (!\instrucao[13]~input_o\))) # (!\instrucao[12]~input_o\ & (\instrucao[13]~input_o\ $ (\instrucao[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~24_combout\);

-- Location: LCCOMB_X57_Y72_N14
\UC|comb~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~25_combout\ = (\instrucao[13]~input_o\ & (!\instrucao[15]~input_o\ & (\instrucao[12]~input_o\ $ (\instrucao[14]~input_o\)))) # (!\instrucao[13]~input_o\ & (((!\instrucao[12]~input_o\ & !\instrucao[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~25_combout\);

-- Location: LCCOMB_X57_Y72_N16
\UC|outULA[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outULA\(2) = (!\UC|comb~24_combout\ & ((\UC|comb~25_combout\) # (\UC|outULA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|comb~24_combout\,
	datac => \UC|comb~25_combout\,
	datad => \UC|outULA\(2),
	combout => \UC|outULA\(2));

-- Location: LCCOMB_X54_Y69_N18
\ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Equal0~0_combout\ = (!\UC|outULA\(1) & !\UC|outULA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|outULA\(1),
	datad => \UC|outULA\(2),
	combout => \ULA|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y72_N26
\UC|comb~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~32_combout\ = (!\instrucao[15]~input_o\ & ((\instrucao[12]~input_o\) # (\instrucao[13]~input_o\ $ (!\instrucao[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~32_combout\);

-- Location: LCCOMB_X57_Y72_N20
\UC|comb~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~31_combout\ = (!\instrucao[12]~input_o\ & ((\instrucao[15]~input_o\ & (!\instrucao[13]~input_o\ & !\instrucao[14]~input_o\)) # (!\instrucao[15]~input_o\ & (\instrucao[13]~input_o\ $ (\instrucao[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~31_combout\);

-- Location: LCCOMB_X54_Y69_N28
\UC|outULA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outULA\(0) = (!\UC|comb~31_combout\ & ((\UC|comb~32_combout\) # (\UC|outULA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|comb~32_combout\,
	datac => \UC|comb~31_combout\,
	datad => \UC|outULA\(0),
	combout => \UC|outULA\(0));

-- Location: LCCOMB_X54_Y69_N24
\ULA|flag~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|flag~4_combout\ = (\UC|outULA\(1) $ (\UC|outULA\(2))) # (!\UC|outULA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|outULA\(1),
	datac => \UC|outULA\(0),
	datad => \UC|outULA\(2),
	combout => \ULA|flag~4_combout\);

-- Location: IOIBUF_X42_Y73_N8
\instrucao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(1),
	o => \instrucao[1]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\instrucao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(0),
	o => \instrucao[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\instrucao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(6),
	o => \instrucao[6]~input_o\);

-- Location: LCCOMB_X57_Y72_N12
\UC|comb~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~26_combout\ = \instrucao[15]~input_o\ $ (((\instrucao[12]~input_o\) # ((\instrucao[13]~input_o\) # (\instrucao[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~26_combout\);

-- Location: LCCOMB_X57_Y72_N22
\UC|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = (!\instrucao[15]~input_o\ & (!\instrucao[12]~input_o\ & (!\instrucao[13]~input_o\ & !\instrucao[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y72_N0
\UC|outMuxPosULA\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outMuxPosULA~combout\ = (!\UC|comb~26_combout\ & ((\UC|Equal0~0_combout\) # (\UC|outMuxPosULA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|comb~26_combout\,
	datab => \UC|Equal0~0_combout\,
	datad => \UC|outMuxPosULA~combout\,
	combout => \UC|outMuxPosULA~combout\);

-- Location: IOIBUF_X67_Y73_N1
\dataRead[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataRead(1),
	o => \dataRead[1]~input_o\);

-- Location: LCCOMB_X54_Y69_N6
\ULA|outData[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[1]~4_combout\ = \instrucao[1]~input_o\ $ (((\instrucao[0]~input_o\ & !\UC|outULA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[0]~input_o\,
	datac => \UC|outULA\(1),
	datad => \instrucao[1]~input_o\,
	combout => \ULA|outData[1]~4_combout\);

-- Location: LCCOMB_X58_Y69_N0
\ULA|outData[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[3]~1_combout\ = (!\UC|outULA\(0) & (!\UC|outULA\(1) & \UC|outULA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|outULA\(0),
	datac => \UC|outULA\(1),
	datad => \UC|outULA\(2),
	combout => \ULA|outData[3]~1_combout\);

-- Location: LCCOMB_X58_Y69_N30
\ULA|outData[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[0]~3_combout\ = (!\UC|outULA\(2) & (\UC|outULA\(0) $ (!\UC|outULA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|outULA\(0),
	datac => \UC|outULA\(1),
	datad => \UC|outULA\(2),
	combout => \ULA|outData[0]~3_combout\);

-- Location: LCCOMB_X58_Y69_N24
\ULA|outData[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[1]~5_combout\ = (\BancoRegistradores|banco~49_combout\ & ((\ULA|outData[3]~1_combout\) # ((\ULA|outData[1]~4_combout\ & \ULA|outData[0]~3_combout\)))) # (!\BancoRegistradores|banco~49_combout\ & (\ULA|outData[1]~4_combout\ & 
-- ((\ULA|outData[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~49_combout\,
	datab => \ULA|outData[1]~4_combout\,
	datac => \ULA|outData[3]~1_combout\,
	datad => \ULA|outData[0]~3_combout\,
	combout => \ULA|outData[1]~5_combout\);

-- Location: LCCOMB_X54_Y69_N30
\ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Equal0~1_combout\ = (!\UC|outULA\(2) & (!\UC|outULA\(1) & \UC|outULA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outULA\(2),
	datab => \UC|outULA\(1),
	datad => \UC|outULA\(0),
	combout => \ULA|Equal0~1_combout\);

-- Location: CLKCTRL_G12
\ULA|Equal0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ULA|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ULA|Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X59_Y69_N18
\ULA|outData[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData\(1) = (GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & ((\ULA|outData\(1)))) # (!GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & (\ULA|outData[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|outData[1]~5_combout\,
	datac => \ULA|Equal0~1clkctrl_outclk\,
	datad => \ULA|outData\(1),
	combout => \ULA|outData\(1));

-- Location: LCCOMB_X59_Y69_N14
\MuxPosULA|b[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxPosULA|b[1]~1_combout\ = (\UC|outMuxPosULA~combout\ & (\dataRead[1]~input_o\)) # (!\UC|outMuxPosULA~combout\ & ((\ULA|outData\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outMuxPosULA~combout\,
	datac => \dataRead[1]~input_o\,
	datad => \ULA|outData\(1),
	combout => \MuxPosULA|b[1]~1_combout\);

-- Location: LCCOMB_X59_Y69_N16
\BancoRegistradores|banco~29feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~29feeder_combout\ = \MuxPosULA|b[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[1]~1_combout\,
	combout => \BancoRegistradores|banco~29feeder_combout\);

-- Location: IOIBUF_X60_Y73_N8
\instrucao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(5),
	o => \instrucao[5]~input_o\);

-- Location: LCCOMB_X57_Y72_N6
\UC|comb~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~28_combout\ = (!\instrucao[15]~input_o\ & ((\instrucao[14]~input_o\ & (\instrucao[12]~input_o\)) # (!\instrucao[14]~input_o\ & ((!\instrucao[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~28_combout\);

-- Location: LCCOMB_X57_Y72_N4
\UC|comb~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~27_combout\ = (\instrucao[15]~input_o\ & (!\instrucao[12]~input_o\ & (!\instrucao[13]~input_o\ & !\instrucao[14]~input_o\))) # (!\instrucao[15]~input_o\ & ((\instrucao[14]~input_o\ & (!\instrucao[12]~input_o\)) # (!\instrucao[14]~input_o\ & 
-- ((\instrucao[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~27_combout\);

-- Location: LCCOMB_X57_Y72_N10
\UC|outBancoRegistradores\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outBancoRegistradores~combout\ = (!\UC|comb~27_combout\ & ((\UC|comb~28_combout\) # (\UC|outBancoRegistradores~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|comb~28_combout\,
	datac => \UC|comb~27_combout\,
	datad => \UC|outBancoRegistradores~combout\,
	combout => \UC|outBancoRegistradores~combout\);

-- Location: LCCOMB_X60_Y69_N20
\BancoRegistradores|banco~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~60_combout\ = (!\instrucao[5]~input_o\ & (\instrucao[6]~input_o\ & (\UC|outBancoRegistradores~combout\ & \instrucao[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \UC|outBancoRegistradores~combout\,
	datad => \instrucao[4]~input_o\,
	combout => \BancoRegistradores|banco~60_combout\);

-- Location: FF_X59_Y69_N17
\BancoRegistradores|banco~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~29feeder_combout\,
	ena => \BancoRegistradores|banco~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~29_q\);

-- Location: LCCOMB_X55_Y69_N30
\BancoRegistradores|banco~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~63_combout\ = (\instrucao[5]~input_o\ & (\instrucao[6]~input_o\ & (\instrucao[4]~input_o\ & \UC|outBancoRegistradores~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \instrucao[4]~input_o\,
	datad => \UC|outBancoRegistradores~combout\,
	combout => \BancoRegistradores|banco~63_combout\);

-- Location: FF_X55_Y69_N9
\BancoRegistradores|banco~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[1]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~37_q\);

-- Location: LCCOMB_X55_Y69_N20
\BancoRegistradores|banco~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~62_combout\ = (!\instrucao[5]~input_o\ & (\instrucao[6]~input_o\ & (!\instrucao[4]~input_o\ & \UC|outBancoRegistradores~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \instrucao[4]~input_o\,
	datad => \UC|outBancoRegistradores~combout\,
	combout => \BancoRegistradores|banco~62_combout\);

-- Location: FF_X55_Y69_N3
\BancoRegistradores|banco~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[1]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~25_q\);

-- Location: LCCOMB_X58_Y69_N26
\BancoRegistradores|banco~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~33feeder_combout\ = \MuxPosULA|b[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[1]~1_combout\,
	combout => \BancoRegistradores|banco~33feeder_combout\);

-- Location: LCCOMB_X60_Y69_N22
\BancoRegistradores|banco~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~61_combout\ = (\instrucao[5]~input_o\ & (\instrucao[6]~input_o\ & (\UC|outBancoRegistradores~combout\ & !\instrucao[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \UC|outBancoRegistradores~combout\,
	datad => \instrucao[4]~input_o\,
	combout => \BancoRegistradores|banco~61_combout\);

-- Location: FF_X58_Y69_N27
\BancoRegistradores|banco~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~33feeder_combout\,
	ena => \BancoRegistradores|banco~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~33_q\);

-- Location: LCCOMB_X55_Y69_N2
\BancoRegistradores|banco~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~45_combout\ = (\instrucao[4]~input_o\ & (\instrucao[5]~input_o\)) # (!\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~33_q\))) # (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~25_q\,
	datad => \BancoRegistradores|banco~33_q\,
	combout => \BancoRegistradores|banco~45_combout\);

-- Location: LCCOMB_X55_Y69_N8
\BancoRegistradores|banco~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~46_combout\ = (\instrucao[4]~input_o\ & ((\BancoRegistradores|banco~45_combout\ & ((\BancoRegistradores|banco~37_q\))) # (!\BancoRegistradores|banco~45_combout\ & (\BancoRegistradores|banco~29_q\)))) # (!\instrucao[4]~input_o\ & 
-- (((\BancoRegistradores|banco~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \BancoRegistradores|banco~29_q\,
	datac => \BancoRegistradores|banco~37_q\,
	datad => \BancoRegistradores|banco~45_combout\,
	combout => \BancoRegistradores|banco~46_combout\);

-- Location: LCCOMB_X59_Y69_N10
\BancoRegistradores|banco~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~21feeder_combout\ = \MuxPosULA|b[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[1]~1_combout\,
	combout => \BancoRegistradores|banco~21feeder_combout\);

-- Location: LCCOMB_X60_Y69_N4
\BancoRegistradores|banco~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~67_combout\ = (\instrucao[5]~input_o\ & (!\instrucao[6]~input_o\ & (\UC|outBancoRegistradores~combout\ & \instrucao[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \UC|outBancoRegistradores~combout\,
	datad => \instrucao[4]~input_o\,
	combout => \BancoRegistradores|banco~67_combout\);

-- Location: FF_X59_Y69_N11
\BancoRegistradores|banco~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~21feeder_combout\,
	ena => \BancoRegistradores|banco~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~21_q\);

-- Location: LCCOMB_X55_Y69_N4
\BancoRegistradores|banco~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~64_combout\ = (\instrucao[5]~input_o\ & (!\instrucao[6]~input_o\ & (!\instrucao[4]~input_o\ & \UC|outBancoRegistradores~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \instrucao[4]~input_o\,
	datad => \UC|outBancoRegistradores~combout\,
	combout => \BancoRegistradores|banco~64_combout\);

-- Location: FF_X56_Y69_N27
\BancoRegistradores|banco~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[1]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~17_q\);

-- Location: LCCOMB_X60_Y69_N2
\BancoRegistradores|banco~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~66_combout\ = (!\instrucao[5]~input_o\ & (!\instrucao[6]~input_o\ & (\UC|outBancoRegistradores~combout\ & !\instrucao[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \UC|outBancoRegistradores~combout\,
	datad => \instrucao[4]~input_o\,
	combout => \BancoRegistradores|banco~66_combout\);

-- Location: FF_X56_Y69_N17
\BancoRegistradores|banco~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[1]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~9_q\);

-- Location: LCCOMB_X57_Y69_N4
\BancoRegistradores|banco~13feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~13feeder_combout\ = \MuxPosULA|b[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[1]~1_combout\,
	combout => \BancoRegistradores|banco~13feeder_combout\);

-- Location: LCCOMB_X60_Y69_N24
\BancoRegistradores|banco~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~65_combout\ = (!\instrucao[5]~input_o\ & (!\instrucao[6]~input_o\ & (\UC|outBancoRegistradores~combout\ & \instrucao[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \instrucao[6]~input_o\,
	datac => \UC|outBancoRegistradores~combout\,
	datad => \instrucao[4]~input_o\,
	combout => \BancoRegistradores|banco~65_combout\);

-- Location: FF_X57_Y69_N5
\BancoRegistradores|banco~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~13feeder_combout\,
	ena => \BancoRegistradores|banco~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~13_q\);

-- Location: LCCOMB_X56_Y69_N16
\BancoRegistradores|banco~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~47_combout\ = (\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\) # ((\BancoRegistradores|banco~13_q\)))) # (!\instrucao[4]~input_o\ & (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~9_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~9_q\,
	datad => \BancoRegistradores|banco~13_q\,
	combout => \BancoRegistradores|banco~47_combout\);

-- Location: LCCOMB_X56_Y69_N26
\BancoRegistradores|banco~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~48_combout\ = (\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~47_combout\ & (\BancoRegistradores|banco~21_q\)) # (!\BancoRegistradores|banco~47_combout\ & ((\BancoRegistradores|banco~17_q\))))) # (!\instrucao[5]~input_o\ & 
-- (((\BancoRegistradores|banco~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~21_q\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~17_q\,
	datad => \BancoRegistradores|banco~47_combout\,
	combout => \BancoRegistradores|banco~48_combout\);

-- Location: LCCOMB_X55_Y69_N10
\BancoRegistradores|banco~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~49_combout\ = (\instrucao[6]~input_o\ & (\BancoRegistradores|banco~46_combout\)) # (!\instrucao[6]~input_o\ & ((\BancoRegistradores|banco~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[6]~input_o\,
	datac => \BancoRegistradores|banco~46_combout\,
	datad => \BancoRegistradores|banco~48_combout\,
	combout => \BancoRegistradores|banco~49_combout\);

-- Location: IOIBUF_X67_Y73_N8
\dataRead[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataRead(0),
	o => \dataRead[0]~input_o\);

-- Location: LCCOMB_X54_Y69_N8
\ULA|outData[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[0]~0_combout\ = (!\UC|outULA\(2) & ((\UC|outULA\(1) & (\instrucao[0]~input_o\ & \UC|outULA\(0))) # (!\UC|outULA\(1) & (!\instrucao[0]~input_o\ & !\UC|outULA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outULA\(1),
	datab => \instrucao[0]~input_o\,
	datac => \UC|outULA\(0),
	datad => \UC|outULA\(2),
	combout => \ULA|outData[0]~0_combout\);

-- Location: LCCOMB_X55_Y69_N6
\ULA|outData[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[0]~2_combout\ = (\ULA|outData[0]~0_combout\) # ((\ULA|outData[3]~1_combout\ & \BancoRegistradores|banco~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|outData[0]~0_combout\,
	datac => \ULA|outData[3]~1_combout\,
	datad => \BancoRegistradores|banco~44_combout\,
	combout => \ULA|outData[0]~2_combout\);

-- Location: LCCOMB_X59_Y69_N12
\ULA|outData[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData\(0) = (GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & ((\ULA|outData\(0)))) # (!GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & (\ULA|outData[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|outData[0]~2_combout\,
	datac => \ULA|Equal0~1clkctrl_outclk\,
	datad => \ULA|outData\(0),
	combout => \ULA|outData\(0));

-- Location: LCCOMB_X59_Y69_N0
\MuxPosULA|b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxPosULA|b[0]~0_combout\ = (\UC|outMuxPosULA~combout\ & (\dataRead[0]~input_o\)) # (!\UC|outMuxPosULA~combout\ & ((\ULA|outData\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outMuxPosULA~combout\,
	datac => \dataRead[0]~input_o\,
	datad => \ULA|outData\(0),
	combout => \MuxPosULA|b[0]~0_combout\);

-- Location: LCCOMB_X59_Y69_N24
\BancoRegistradores|banco~28feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~28feeder_combout\ = \MuxPosULA|b[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[0]~0_combout\,
	combout => \BancoRegistradores|banco~28feeder_combout\);

-- Location: FF_X59_Y69_N25
\BancoRegistradores|banco~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~28feeder_combout\,
	ena => \BancoRegistradores|banco~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~28_q\);

-- Location: FF_X55_Y69_N23
\BancoRegistradores|banco~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~36_q\);

-- Location: FF_X55_Y69_N1
\BancoRegistradores|banco~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~24_q\);

-- Location: LCCOMB_X58_Y69_N28
\BancoRegistradores|banco~32feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~32feeder_combout\ = \MuxPosULA|b[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[0]~0_combout\,
	combout => \BancoRegistradores|banco~32feeder_combout\);

-- Location: FF_X58_Y69_N29
\BancoRegistradores|banco~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~32feeder_combout\,
	ena => \BancoRegistradores|banco~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~32_q\);

-- Location: LCCOMB_X55_Y69_N0
\BancoRegistradores|banco~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~40_combout\ = (\instrucao[4]~input_o\ & (\instrucao[5]~input_o\)) # (!\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~32_q\))) # (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~24_q\,
	datad => \BancoRegistradores|banco~32_q\,
	combout => \BancoRegistradores|banco~40_combout\);

-- Location: LCCOMB_X55_Y69_N22
\BancoRegistradores|banco~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~41_combout\ = (\instrucao[4]~input_o\ & ((\BancoRegistradores|banco~40_combout\ & ((\BancoRegistradores|banco~36_q\))) # (!\BancoRegistradores|banco~40_combout\ & (\BancoRegistradores|banco~28_q\)))) # (!\instrucao[4]~input_o\ & 
-- (((\BancoRegistradores|banco~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \BancoRegistradores|banco~28_q\,
	datac => \BancoRegistradores|banco~36_q\,
	datad => \BancoRegistradores|banco~40_combout\,
	combout => \BancoRegistradores|banco~41_combout\);

-- Location: LCCOMB_X59_Y69_N26
\BancoRegistradores|banco~20feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~20feeder_combout\ = \MuxPosULA|b[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[0]~0_combout\,
	combout => \BancoRegistradores|banco~20feeder_combout\);

-- Location: FF_X59_Y69_N27
\BancoRegistradores|banco~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~20feeder_combout\,
	ena => \BancoRegistradores|banco~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~20_q\);

-- Location: FF_X56_Y69_N29
\BancoRegistradores|banco~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~16_q\);

-- Location: FF_X60_Y69_N27
\BancoRegistradores|banco~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~8_q\);

-- Location: LCCOMB_X60_Y69_N12
\BancoRegistradores|banco~12feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~12feeder_combout\ = \MuxPosULA|b[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[0]~0_combout\,
	combout => \BancoRegistradores|banco~12feeder_combout\);

-- Location: FF_X60_Y69_N13
\BancoRegistradores|banco~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~12feeder_combout\,
	ena => \BancoRegistradores|banco~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~12_q\);

-- Location: LCCOMB_X60_Y69_N26
\BancoRegistradores|banco~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~42_combout\ = (\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\) # ((\BancoRegistradores|banco~12_q\)))) # (!\instrucao[4]~input_o\ & (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~8_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~8_q\,
	datad => \BancoRegistradores|banco~12_q\,
	combout => \BancoRegistradores|banco~42_combout\);

-- Location: LCCOMB_X56_Y69_N28
\BancoRegistradores|banco~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~43_combout\ = (\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~42_combout\ & (\BancoRegistradores|banco~20_q\)) # (!\BancoRegistradores|banco~42_combout\ & ((\BancoRegistradores|banco~16_q\))))) # (!\instrucao[5]~input_o\ & 
-- (((\BancoRegistradores|banco~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~20_q\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~16_q\,
	datad => \BancoRegistradores|banco~42_combout\,
	combout => \BancoRegistradores|banco~43_combout\);

-- Location: LCCOMB_X55_Y69_N24
\BancoRegistradores|banco~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~44_combout\ = (\instrucao[6]~input_o\ & (\BancoRegistradores|banco~41_combout\)) # (!\instrucao[6]~input_o\ & ((\BancoRegistradores|banco~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[6]~input_o\,
	datac => \BancoRegistradores|banco~41_combout\,
	datad => \BancoRegistradores|banco~43_combout\,
	combout => \BancoRegistradores|banco~44_combout\);

-- Location: LCCOMB_X54_Y69_N26
\ULA|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|flag~0_combout\ = (\instrucao[1]~input_o\ & (\BancoRegistradores|banco~49_combout\ & (\instrucao[0]~input_o\ $ (!\BancoRegistradores|banco~44_combout\)))) # (!\instrucao[1]~input_o\ & (!\BancoRegistradores|banco~49_combout\ & (\instrucao[0]~input_o\ 
-- $ (!\BancoRegistradores|banco~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[1]~input_o\,
	datab => \instrucao[0]~input_o\,
	datac => \BancoRegistradores|banco~49_combout\,
	datad => \BancoRegistradores|banco~44_combout\,
	combout => \ULA|flag~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\dataRead[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataRead(2),
	o => \dataRead[2]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\instrucao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(2),
	o => \instrucao[2]~input_o\);

-- Location: LCCOMB_X54_Y69_N20
\ULA|outData[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[2]~6_combout\ = \instrucao[2]~input_o\ $ (((\instrucao[1]~input_o\ & (\instrucao[0]~input_o\ & !\UC|outULA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[1]~input_o\,
	datab => \instrucao[0]~input_o\,
	datac => \UC|outULA\(1),
	datad => \instrucao[2]~input_o\,
	combout => \ULA|outData[2]~6_combout\);

-- Location: LCCOMB_X58_Y69_N14
\ULA|outData[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[2]~7_combout\ = (\ULA|outData[2]~6_combout\ & ((\ULA|outData[0]~3_combout\) # ((\ULA|outData[3]~1_combout\ & \BancoRegistradores|banco~54_combout\)))) # (!\ULA|outData[2]~6_combout\ & (((\ULA|outData[3]~1_combout\ & 
-- \BancoRegistradores|banco~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|outData[2]~6_combout\,
	datab => \ULA|outData[0]~3_combout\,
	datac => \ULA|outData[3]~1_combout\,
	datad => \BancoRegistradores|banco~54_combout\,
	combout => \ULA|outData[2]~7_combout\);

-- Location: LCCOMB_X59_Y69_N20
\ULA|outData[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData\(2) = (GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & ((\ULA|outData\(2)))) # (!GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & (\ULA|outData[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|outData[2]~7_combout\,
	datac => \ULA|Equal0~1clkctrl_outclk\,
	datad => \ULA|outData\(2),
	combout => \ULA|outData\(2));

-- Location: LCCOMB_X59_Y69_N8
\MuxPosULA|b[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxPosULA|b[2]~2_combout\ = (\UC|outMuxPosULA~combout\ & (\dataRead[2]~input_o\)) # (!\UC|outMuxPosULA~combout\ & ((\ULA|outData\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outMuxPosULA~combout\,
	datac => \dataRead[2]~input_o\,
	datad => \ULA|outData\(2),
	combout => \MuxPosULA|b[2]~2_combout\);

-- Location: LCCOMB_X59_Y69_N22
\BancoRegistradores|banco~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~22feeder_combout\ = \MuxPosULA|b[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[2]~2_combout\,
	combout => \BancoRegistradores|banco~22feeder_combout\);

-- Location: FF_X59_Y69_N23
\BancoRegistradores|banco~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~22feeder_combout\,
	ena => \BancoRegistradores|banco~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~22_q\);

-- Location: FF_X56_Y69_N19
\BancoRegistradores|banco~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[2]~2_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~18_q\);

-- Location: FF_X56_Y69_N25
\BancoRegistradores|banco~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[2]~2_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~10_q\);

-- Location: LCCOMB_X57_Y69_N2
\BancoRegistradores|banco~14feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~14feeder_combout\ = \MuxPosULA|b[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[2]~2_combout\,
	combout => \BancoRegistradores|banco~14feeder_combout\);

-- Location: FF_X57_Y69_N3
\BancoRegistradores|banco~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~14feeder_combout\,
	ena => \BancoRegistradores|banco~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~14_q\);

-- Location: LCCOMB_X56_Y69_N24
\BancoRegistradores|banco~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~52_combout\ = (\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\) # ((\BancoRegistradores|banco~14_q\)))) # (!\instrucao[4]~input_o\ & (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~10_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~10_q\,
	datad => \BancoRegistradores|banco~14_q\,
	combout => \BancoRegistradores|banco~52_combout\);

-- Location: LCCOMB_X56_Y69_N18
\BancoRegistradores|banco~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~53_combout\ = (\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~52_combout\ & (\BancoRegistradores|banco~22_q\)) # (!\BancoRegistradores|banco~52_combout\ & ((\BancoRegistradores|banco~18_q\))))) # (!\instrucao[5]~input_o\ & 
-- (((\BancoRegistradores|banco~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~22_q\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~18_q\,
	datad => \BancoRegistradores|banco~52_combout\,
	combout => \BancoRegistradores|banco~53_combout\);

-- Location: LCCOMB_X59_Y69_N4
\BancoRegistradores|banco~30feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~30feeder_combout\ = \MuxPosULA|b[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[2]~2_combout\,
	combout => \BancoRegistradores|banco~30feeder_combout\);

-- Location: FF_X59_Y69_N5
\BancoRegistradores|banco~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~30feeder_combout\,
	ena => \BancoRegistradores|banco~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~30_q\);

-- Location: FF_X55_Y69_N19
\BancoRegistradores|banco~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[2]~2_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~38_q\);

-- Location: FF_X55_Y69_N13
\BancoRegistradores|banco~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[2]~2_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~26_q\);

-- Location: LCCOMB_X58_Y69_N12
\BancoRegistradores|banco~34feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~34feeder_combout\ = \MuxPosULA|b[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[2]~2_combout\,
	combout => \BancoRegistradores|banco~34feeder_combout\);

-- Location: FF_X58_Y69_N13
\BancoRegistradores|banco~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~34feeder_combout\,
	ena => \BancoRegistradores|banco~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~34_q\);

-- Location: LCCOMB_X55_Y69_N12
\BancoRegistradores|banco~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~50_combout\ = (\instrucao[4]~input_o\ & (\instrucao[5]~input_o\)) # (!\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~34_q\))) # (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~26_q\,
	datad => \BancoRegistradores|banco~34_q\,
	combout => \BancoRegistradores|banco~50_combout\);

-- Location: LCCOMB_X55_Y69_N18
\BancoRegistradores|banco~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~51_combout\ = (\instrucao[4]~input_o\ & ((\BancoRegistradores|banco~50_combout\ & ((\BancoRegistradores|banco~38_q\))) # (!\BancoRegistradores|banco~50_combout\ & (\BancoRegistradores|banco~30_q\)))) # (!\instrucao[4]~input_o\ & 
-- (((\BancoRegistradores|banco~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \BancoRegistradores|banco~30_q\,
	datac => \BancoRegistradores|banco~38_q\,
	datad => \BancoRegistradores|banco~50_combout\,
	combout => \BancoRegistradores|banco~51_combout\);

-- Location: LCCOMB_X54_Y69_N12
\BancoRegistradores|banco~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~54_combout\ = (\instrucao[6]~input_o\ & ((\BancoRegistradores|banco~51_combout\))) # (!\instrucao[6]~input_o\ & (\BancoRegistradores|banco~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[6]~input_o\,
	datac => \BancoRegistradores|banco~53_combout\,
	datad => \BancoRegistradores|banco~51_combout\,
	combout => \BancoRegistradores|banco~54_combout\);

-- Location: IOIBUF_X56_Y0_N8
\instrucao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(3),
	o => \instrucao[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\dataRead[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataRead(3),
	o => \dataRead[3]~input_o\);

-- Location: LCCOMB_X54_Y69_N14
\ULA|outData[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[3]~8_combout\ = (\instrucao[1]~input_o\ & (\instrucao[0]~input_o\ & \instrucao[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[1]~input_o\,
	datac => \instrucao[0]~input_o\,
	datad => \instrucao[2]~input_o\,
	combout => \ULA|outData[3]~8_combout\);

-- Location: LCCOMB_X54_Y69_N2
\ULA|outData[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[3]~9_combout\ = (\UC|outULA\(1) & (\instrucao[3]~input_o\ & ((\UC|outULA\(0))))) # (!\UC|outULA\(1) & (!\UC|outULA\(0) & (\instrucao[3]~input_o\ $ (\ULA|outData[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outULA\(1),
	datab => \instrucao[3]~input_o\,
	datac => \ULA|outData[3]~8_combout\,
	datad => \UC|outULA\(0),
	combout => \ULA|outData[3]~9_combout\);

-- Location: LCCOMB_X58_Y69_N8
\ULA|outData[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData[3]~10_combout\ = (\BancoRegistradores|banco~59_combout\ & ((\ULA|outData[3]~1_combout\) # ((\ULA|outData[3]~9_combout\ & !\UC|outULA\(2))))) # (!\BancoRegistradores|banco~59_combout\ & (\ULA|outData[3]~9_combout\ & ((!\UC|outULA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~59_combout\,
	datab => \ULA|outData[3]~9_combout\,
	datac => \ULA|outData[3]~1_combout\,
	datad => \UC|outULA\(2),
	combout => \ULA|outData[3]~10_combout\);

-- Location: LCCOMB_X59_Y69_N2
\ULA|outData[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|outData\(3) = (GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & ((\ULA|outData\(3)))) # (!GLOBAL(\ULA|Equal0~1clkctrl_outclk\) & (\ULA|outData[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|outData[3]~10_combout\,
	datac => \ULA|Equal0~1clkctrl_outclk\,
	datad => \ULA|outData\(3),
	combout => \ULA|outData\(3));

-- Location: LCCOMB_X59_Y69_N6
\MuxPosULA|b[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxPosULA|b[3]~3_combout\ = (\UC|outMuxPosULA~combout\ & (\dataRead[3]~input_o\)) # (!\UC|outMuxPosULA~combout\ & ((\ULA|outData\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|outMuxPosULA~combout\,
	datac => \dataRead[3]~input_o\,
	datad => \ULA|outData\(3),
	combout => \MuxPosULA|b[3]~3_combout\);

-- Location: LCCOMB_X59_Y69_N30
\BancoRegistradores|banco~23feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~23feeder_combout\ = \MuxPosULA|b[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[3]~3_combout\,
	combout => \BancoRegistradores|banco~23feeder_combout\);

-- Location: FF_X59_Y69_N31
\BancoRegistradores|banco~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~23feeder_combout\,
	ena => \BancoRegistradores|banco~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~23_q\);

-- Location: FF_X56_Y69_N23
\BancoRegistradores|banco~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[3]~3_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~19_q\);

-- Location: FF_X60_Y69_N31
\BancoRegistradores|banco~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[3]~3_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~11_q\);

-- Location: LCCOMB_X60_Y69_N28
\BancoRegistradores|banco~15feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~15feeder_combout\ = \MuxPosULA|b[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxPosULA|b[3]~3_combout\,
	combout => \BancoRegistradores|banco~15feeder_combout\);

-- Location: FF_X60_Y69_N29
\BancoRegistradores|banco~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~15feeder_combout\,
	ena => \BancoRegistradores|banco~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~15_q\);

-- Location: LCCOMB_X60_Y69_N30
\BancoRegistradores|banco~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~57_combout\ = (\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\) # ((\BancoRegistradores|banco~15_q\)))) # (!\instrucao[4]~input_o\ & (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~11_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~11_q\,
	datad => \BancoRegistradores|banco~15_q\,
	combout => \BancoRegistradores|banco~57_combout\);

-- Location: LCCOMB_X56_Y69_N22
\BancoRegistradores|banco~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~58_combout\ = (\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~57_combout\ & (\BancoRegistradores|banco~23_q\)) # (!\BancoRegistradores|banco~57_combout\ & ((\BancoRegistradores|banco~19_q\))))) # (!\instrucao[5]~input_o\ & 
-- (((\BancoRegistradores|banco~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[5]~input_o\,
	datab => \BancoRegistradores|banco~23_q\,
	datac => \BancoRegistradores|banco~19_q\,
	datad => \BancoRegistradores|banco~57_combout\,
	combout => \BancoRegistradores|banco~58_combout\);

-- Location: LCCOMB_X59_Y69_N28
\BancoRegistradores|banco~31feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~31feeder_combout\ = \MuxPosULA|b[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[3]~3_combout\,
	combout => \BancoRegistradores|banco~31feeder_combout\);

-- Location: FF_X59_Y69_N29
\BancoRegistradores|banco~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~31feeder_combout\,
	ena => \BancoRegistradores|banco~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~31_q\);

-- Location: FF_X55_Y69_N15
\BancoRegistradores|banco~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[3]~3_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~39_q\);

-- Location: FF_X55_Y69_N17
\BancoRegistradores|banco~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxPosULA|b[3]~3_combout\,
	sload => VCC,
	ena => \BancoRegistradores|banco~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~27_q\);

-- Location: LCCOMB_X58_Y69_N18
\BancoRegistradores|banco~35feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~35feeder_combout\ = \MuxPosULA|b[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxPosULA|b[3]~3_combout\,
	combout => \BancoRegistradores|banco~35feeder_combout\);

-- Location: FF_X58_Y69_N19
\BancoRegistradores|banco~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BancoRegistradores|banco~35feeder_combout\,
	ena => \BancoRegistradores|banco~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|banco~35_q\);

-- Location: LCCOMB_X55_Y69_N16
\BancoRegistradores|banco~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~55_combout\ = (\instrucao[4]~input_o\ & (\instrucao[5]~input_o\)) # (!\instrucao[4]~input_o\ & ((\instrucao[5]~input_o\ & ((\BancoRegistradores|banco~35_q\))) # (!\instrucao[5]~input_o\ & (\BancoRegistradores|banco~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[4]~input_o\,
	datab => \instrucao[5]~input_o\,
	datac => \BancoRegistradores|banco~27_q\,
	datad => \BancoRegistradores|banco~35_q\,
	combout => \BancoRegistradores|banco~55_combout\);

-- Location: LCCOMB_X55_Y69_N14
\BancoRegistradores|banco~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~56_combout\ = (\instrucao[4]~input_o\ & ((\BancoRegistradores|banco~55_combout\ & ((\BancoRegistradores|banco~39_q\))) # (!\BancoRegistradores|banco~55_combout\ & (\BancoRegistradores|banco~31_q\)))) # (!\instrucao[4]~input_o\ & 
-- (((\BancoRegistradores|banco~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~31_q\,
	datab => \instrucao[4]~input_o\,
	datac => \BancoRegistradores|banco~39_q\,
	datad => \BancoRegistradores|banco~55_combout\,
	combout => \BancoRegistradores|banco~56_combout\);

-- Location: LCCOMB_X56_Y69_N12
\BancoRegistradores|banco~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoRegistradores|banco~59_combout\ = (\instrucao[6]~input_o\ & ((\BancoRegistradores|banco~56_combout\))) # (!\instrucao[6]~input_o\ & (\BancoRegistradores|banco~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[6]~input_o\,
	datac => \BancoRegistradores|banco~58_combout\,
	datad => \BancoRegistradores|banco~56_combout\,
	combout => \BancoRegistradores|banco~59_combout\);

-- Location: LCCOMB_X54_Y69_N0
\ULA|flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|flag~1_combout\ = (\BancoRegistradores|banco~54_combout\ & (\instrucao[2]~input_o\ & (\instrucao[3]~input_o\ $ (!\BancoRegistradores|banco~59_combout\)))) # (!\BancoRegistradores|banco~54_combout\ & (!\instrucao[2]~input_o\ & (\instrucao[3]~input_o\ 
-- $ (!\BancoRegistradores|banco~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|banco~54_combout\,
	datab => \instrucao[3]~input_o\,
	datac => \instrucao[2]~input_o\,
	datad => \BancoRegistradores|banco~59_combout\,
	combout => \ULA|flag~1_combout\);

-- Location: LCCOMB_X54_Y69_N16
\ULA|flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|flag~2_combout\ = (!\UC|outULA\(0) & (\ULA|flag~0_combout\ & \ULA|flag~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|outULA\(0),
	datac => \ULA|flag~0_combout\,
	datad => \ULA|flag~1_combout\,
	combout => \ULA|flag~2_combout\);

-- Location: LCCOMB_X54_Y69_N4
\ULA|flag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|flag~3_combout\ = (\UC|outULA\(2) & (\UC|outULA\(1))) # (!\UC|outULA\(2) & ((\ULA|flag~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|outULA\(1),
	datac => \ULA|flag~2_combout\,
	datad => \UC|outULA\(2),
	combout => \ULA|flag~3_combout\);

-- Location: LCCOMB_X54_Y69_N10
\ULA|flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|flag~combout\ = (!\ULA|Equal0~0_combout\ & ((\ULA|flag~4_combout\ & (\ULA|flag~3_combout\)) # (!\ULA|flag~4_combout\ & ((\ULA|flag~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal0~0_combout\,
	datab => \ULA|flag~4_combout\,
	datac => \ULA|flag~3_combout\,
	datad => \ULA|flag~combout\,
	combout => \ULA|flag~combout\);

-- Location: LCCOMB_X57_Y72_N18
\UC|comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~21_combout\ = (!\instrucao[14]~input_o\ & ((\instrucao[15]~input_o\ & (!\instrucao[12]~input_o\ & !\instrucao[13]~input_o\)) # (!\instrucao[15]~input_o\ & (\instrucao[12]~input_o\ & \instrucao[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~21_combout\);

-- Location: LCCOMB_X57_Y72_N8
\UC|comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~20_combout\ = (!\instrucao[15]~input_o\ & (((\instrucao[14]~input_o\) # (!\instrucao[13]~input_o\)) # (!\instrucao[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~20_combout\);

-- Location: LCCOMB_X56_Y72_N24
\UC|outAndPC\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outAndPC~combout\ = (!\UC|comb~20_combout\ & ((\UC|comb~21_combout\) # (\UC|outAndPC~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|comb~21_combout\,
	datac => \UC|comb~20_combout\,
	datad => \UC|outAndPC~combout\,
	combout => \UC|outAndPC~combout\);

-- Location: LCCOMB_X53_Y69_N0
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\UC|outAndPC~combout\) # (!\ULA|flag~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|flag~combout\,
	datad => \UC|outAndPC~combout\,
	combout => \comb~0_combout\);

-- Location: FF_X53_Y69_N9
\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[0]~8_combout\,
	asdata => \instrucao[4]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

-- Location: LCCOMB_X53_Y69_N10
\PC|data_out[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[1]~10_combout\ = (\PC|data_out\(1) & (!\PC|data_out[0]~9\)) # (!\PC|data_out\(1) & ((\PC|data_out[0]~9\) # (GND)))
-- \PC|data_out[1]~11\ = CARRY((!\PC|data_out[0]~9\) # (!\PC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datad => VCC,
	cin => \PC|data_out[0]~9\,
	combout => \PC|data_out[1]~10_combout\,
	cout => \PC|data_out[1]~11\);

-- Location: FF_X53_Y69_N11
\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[1]~10_combout\,
	asdata => \instrucao[5]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

-- Location: LCCOMB_X53_Y69_N12
\PC|data_out[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[2]~12_combout\ = (\PC|data_out\(2) & (\PC|data_out[1]~11\ $ (GND))) # (!\PC|data_out\(2) & (!\PC|data_out[1]~11\ & VCC))
-- \PC|data_out[2]~13\ = CARRY((\PC|data_out\(2) & !\PC|data_out[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datad => VCC,
	cin => \PC|data_out[1]~11\,
	combout => \PC|data_out[2]~12_combout\,
	cout => \PC|data_out[2]~13\);

-- Location: FF_X53_Y69_N13
\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[2]~12_combout\,
	asdata => \instrucao[6]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

-- Location: LCCOMB_X53_Y69_N14
\PC|data_out[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[3]~14_combout\ = (\PC|data_out\(3) & (!\PC|data_out[2]~13\)) # (!\PC|data_out\(3) & ((\PC|data_out[2]~13\) # (GND)))
-- \PC|data_out[3]~15\ = CARRY((!\PC|data_out[2]~13\) # (!\PC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|data_out[2]~13\,
	combout => \PC|data_out[3]~14_combout\,
	cout => \PC|data_out[3]~15\);

-- Location: IOIBUF_X52_Y73_N22
\instrucao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(7),
	o => \instrucao[7]~input_o\);

-- Location: FF_X53_Y69_N15
\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[3]~14_combout\,
	asdata => \instrucao[7]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

-- Location: LCCOMB_X53_Y69_N16
\PC|data_out[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[4]~16_combout\ = (\PC|data_out\(4) & (\PC|data_out[3]~15\ $ (GND))) # (!\PC|data_out\(4) & (!\PC|data_out[3]~15\ & VCC))
-- \PC|data_out[4]~17\ = CARRY((\PC|data_out\(4) & !\PC|data_out[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(4),
	datad => VCC,
	cin => \PC|data_out[3]~15\,
	combout => \PC|data_out[4]~16_combout\,
	cout => \PC|data_out[4]~17\);

-- Location: IOIBUF_X60_Y73_N1
\instrucao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(8),
	o => \instrucao[8]~input_o\);

-- Location: FF_X53_Y69_N17
\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[4]~16_combout\,
	asdata => \instrucao[8]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

-- Location: LCCOMB_X53_Y69_N18
\PC|data_out[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[5]~18_combout\ = (\PC|data_out\(5) & (!\PC|data_out[4]~17\)) # (!\PC|data_out\(5) & ((\PC|data_out[4]~17\) # (GND)))
-- \PC|data_out[5]~19\ = CARRY((!\PC|data_out[4]~17\) # (!\PC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|data_out[4]~17\,
	combout => \PC|data_out[5]~18_combout\,
	cout => \PC|data_out[5]~19\);

-- Location: IOIBUF_X54_Y73_N1
\instrucao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(9),
	o => \instrucao[9]~input_o\);

-- Location: FF_X53_Y69_N19
\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[5]~18_combout\,
	asdata => \instrucao[9]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

-- Location: LCCOMB_X53_Y69_N20
\PC|data_out[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[6]~20_combout\ = (\PC|data_out\(6) & (\PC|data_out[5]~19\ $ (GND))) # (!\PC|data_out\(6) & (!\PC|data_out[5]~19\ & VCC))
-- \PC|data_out[6]~21\ = CARRY((\PC|data_out\(6) & !\PC|data_out[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|data_out[5]~19\,
	combout => \PC|data_out[6]~20_combout\,
	cout => \PC|data_out[6]~21\);

-- Location: IOIBUF_X54_Y73_N8
\instrucao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(10),
	o => \instrucao[10]~input_o\);

-- Location: FF_X53_Y69_N21
\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[6]~20_combout\,
	asdata => \instrucao[10]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

-- Location: LCCOMB_X53_Y69_N22
\PC|data_out[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[7]~22_combout\ = \PC|data_out\(7) $ (\PC|data_out[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	cin => \PC|data_out[6]~21\,
	combout => \PC|data_out[7]~22_combout\);

-- Location: IOIBUF_X52_Y73_N15
\instrucao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(11),
	o => \instrucao[11]~input_o\);

-- Location: FF_X53_Y69_N23
\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[7]~22_combout\,
	asdata => \instrucao[11]~input_o\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

-- Location: LCCOMB_X57_Y72_N28
\UC|comb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~22_combout\ = (\instrucao[15]~input_o\ & (!\instrucao[12]~input_o\ & (!\instrucao[13]~input_o\ & !\instrucao[14]~input_o\))) # (!\instrucao[15]~input_o\ & ((\instrucao[12]~input_o\) # ((!\instrucao[14]~input_o\) # (!\instrucao[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~22_combout\);

-- Location: LCCOMB_X57_Y72_N30
\UC|comb~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|comb~23_combout\ = (\instrucao[15]~input_o\) # ((\instrucao[12]~input_o\) # ((!\instrucao[14]~input_o\) # (!\instrucao[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[15]~input_o\,
	datab => \instrucao[12]~input_o\,
	datac => \instrucao[13]~input_o\,
	datad => \instrucao[14]~input_o\,
	combout => \UC|comb~23_combout\);

-- Location: LCCOMB_X56_Y72_N0
\UC|outDemux\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|outDemux~combout\ = (!\UC|comb~22_combout\ & ((\UC|outDemux~combout\) # (!\UC|comb~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|comb~22_combout\,
	datac => \UC|comb~23_combout\,
	datad => \UC|outDemux~combout\,
	combout => \UC|outDemux~combout\);

-- Location: CLKCTRL_G11
\UC|outDemux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UC|outDemux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UC|outDemux~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y69_N28
\Tristate|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Tristate|output\(0) = (GLOBAL(\UC|outDemux~clkctrl_outclk\) & ((\BancoRegistradores|banco~44_combout\))) # (!GLOBAL(\UC|outDemux~clkctrl_outclk\) & (\Tristate|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tristate|output\(0),
	datac => \UC|outDemux~clkctrl_outclk\,
	datad => \BancoRegistradores|banco~44_combout\,
	combout => \Tristate|output\(0));

-- Location: LCCOMB_X55_Y69_N26
\Tristate|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Tristate|output\(1) = (GLOBAL(\UC|outDemux~clkctrl_outclk\) & ((\BancoRegistradores|banco~49_combout\))) # (!GLOBAL(\UC|outDemux~clkctrl_outclk\) & (\Tristate|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tristate|output\(1),
	datac => \UC|outDemux~clkctrl_outclk\,
	datad => \BancoRegistradores|banco~49_combout\,
	combout => \Tristate|output\(1));

-- Location: LCCOMB_X54_Y69_N22
\Tristate|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Tristate|output\(2) = (GLOBAL(\UC|outDemux~clkctrl_outclk\) & ((\BancoRegistradores|banco~54_combout\))) # (!GLOBAL(\UC|outDemux~clkctrl_outclk\) & (\Tristate|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tristate|output\(2),
	datac => \UC|outDemux~clkctrl_outclk\,
	datad => \BancoRegistradores|banco~54_combout\,
	combout => \Tristate|output\(2));

-- Location: LCCOMB_X56_Y69_N14
\Tristate|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Tristate|output\(3) = (GLOBAL(\UC|outDemux~clkctrl_outclk\) & ((\BancoRegistradores|banco~59_combout\))) # (!GLOBAL(\UC|outDemux~clkctrl_outclk\) & (\Tristate|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tristate|output\(3),
	datac => \UC|outDemux~clkctrl_outclk\,
	datad => \BancoRegistradores|banco~59_combout\,
	combout => \Tristate|output\(3));

ww_outAdress(0) <= \outAdress[0]~output_o\;

ww_outAdress(1) <= \outAdress[1]~output_o\;

ww_outAdress(2) <= \outAdress[2]~output_o\;

ww_outAdress(3) <= \outAdress[3]~output_o\;

ww_outAdress(4) <= \outAdress[4]~output_o\;

ww_outAdress(5) <= \outAdress[5]~output_o\;

ww_outAdress(6) <= \outAdress[6]~output_o\;

ww_outAdress(7) <= \outAdress[7]~output_o\;

ww_dataWrite(0) <= \dataWrite[0]~output_o\;

ww_dataWrite(1) <= \dataWrite[1]~output_o\;

ww_dataWrite(2) <= \dataWrite[2]~output_o\;

ww_dataWrite(3) <= \dataWrite[3]~output_o\;

ww_ioAdress(0) <= \ioAdress[0]~output_o\;

ww_ioAdress(1) <= \ioAdress[1]~output_o\;

ww_ioAdress(2) <= \ioAdress[2]~output_o\;

ww_ioAdress(3) <= \ioAdress[3]~output_o\;
END structure;


