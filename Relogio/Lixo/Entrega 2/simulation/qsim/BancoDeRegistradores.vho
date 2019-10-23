-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "08/28/2019 18:45:46"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BancoDeRegistradores IS
    PORT (
	clk : IN std_logic;
	enderecoLeituraA : IN std_logic_vector(2 DOWNTO 0);
	enderecoLeituraB : IN std_logic_vector(2 DOWNTO 0);
	enderecoEscrita : IN std_logic_vector(2 DOWNTO 0);
	dadoEscrita : IN std_logic_vector(7 DOWNTO 0);
	we : IN std_logic;
	saidaA : OUT std_logic_vector(7 DOWNTO 0);
	saidaB : OUT std_logic_vector(7 DOWNTO 0)
	);
END BancoDeRegistradores;

ARCHITECTURE structure OF BancoDeRegistradores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enderecoLeituraA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enderecoLeituraB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enderecoEscrita : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dadoEscrita : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_saidaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaB : std_logic_vector(7 DOWNTO 0);
SIGNAL \saidaA[0]~output_o\ : std_logic;
SIGNAL \saidaA[1]~output_o\ : std_logic;
SIGNAL \saidaA[2]~output_o\ : std_logic;
SIGNAL \saidaA[3]~output_o\ : std_logic;
SIGNAL \saidaA[4]~output_o\ : std_logic;
SIGNAL \saidaA[5]~output_o\ : std_logic;
SIGNAL \saidaA[6]~output_o\ : std_logic;
SIGNAL \saidaA[7]~output_o\ : std_logic;
SIGNAL \saidaB[0]~output_o\ : std_logic;
SIGNAL \saidaB[1]~output_o\ : std_logic;
SIGNAL \saidaB[2]~output_o\ : std_logic;
SIGNAL \saidaB[3]~output_o\ : std_logic;
SIGNAL \saidaB[4]~output_o\ : std_logic;
SIGNAL \saidaB[5]~output_o\ : std_logic;
SIGNAL \saidaB[6]~output_o\ : std_logic;
SIGNAL \saidaB[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dadoEscrita[0]~input_o\ : std_logic;
SIGNAL \enderecoEscrita[0]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \enderecoEscrita[2]~input_o\ : std_logic;
SIGNAL \enderecoEscrita[1]~input_o\ : std_logic;
SIGNAL \banco~156_combout\ : std_logic;
SIGNAL \banco~52_q\ : std_logic;
SIGNAL \enderecoLeituraA[0]~input_o\ : std_logic;
SIGNAL \banco~157_combout\ : std_logic;
SIGNAL \banco~60_q\ : std_logic;
SIGNAL \enderecoLeituraA[1]~input_o\ : std_logic;
SIGNAL \banco~158_combout\ : std_logic;
SIGNAL \banco~44_q\ : std_logic;
SIGNAL \banco~76_combout\ : std_logic;
SIGNAL \banco~159_combout\ : std_logic;
SIGNAL \banco~68_q\ : std_logic;
SIGNAL \banco~77_combout\ : std_logic;
SIGNAL \banco~160_combout\ : std_logic;
SIGNAL \banco~28_q\ : std_logic;
SIGNAL \banco~161_combout\ : std_logic;
SIGNAL \banco~20_q\ : std_logic;
SIGNAL \banco~162_combout\ : std_logic;
SIGNAL \banco~12_q\ : std_logic;
SIGNAL \banco~78_combout\ : std_logic;
SIGNAL \banco~163_combout\ : std_logic;
SIGNAL \banco~36_q\ : std_logic;
SIGNAL \banco~79_combout\ : std_logic;
SIGNAL \enderecoLeituraA[2]~input_o\ : std_logic;
SIGNAL \banco~80_combout\ : std_logic;
SIGNAL \dadoEscrita[1]~input_o\ : std_logic;
SIGNAL \banco~53_q\ : std_logic;
SIGNAL \banco~61_q\ : std_logic;
SIGNAL \banco~45_q\ : std_logic;
SIGNAL \banco~81_combout\ : std_logic;
SIGNAL \banco~69_q\ : std_logic;
SIGNAL \banco~82_combout\ : std_logic;
SIGNAL \banco~29_q\ : std_logic;
SIGNAL \banco~21_q\ : std_logic;
SIGNAL \banco~13_q\ : std_logic;
SIGNAL \banco~83_combout\ : std_logic;
SIGNAL \banco~37_q\ : std_logic;
SIGNAL \banco~84_combout\ : std_logic;
SIGNAL \banco~85_combout\ : std_logic;
SIGNAL \dadoEscrita[2]~input_o\ : std_logic;
SIGNAL \banco~54_q\ : std_logic;
SIGNAL \banco~62_q\ : std_logic;
SIGNAL \banco~46_q\ : std_logic;
SIGNAL \banco~86_combout\ : std_logic;
SIGNAL \banco~70_q\ : std_logic;
SIGNAL \banco~87_combout\ : std_logic;
SIGNAL \banco~30_q\ : std_logic;
SIGNAL \banco~22_q\ : std_logic;
SIGNAL \banco~14_q\ : std_logic;
SIGNAL \banco~88_combout\ : std_logic;
SIGNAL \banco~38_q\ : std_logic;
SIGNAL \banco~89_combout\ : std_logic;
SIGNAL \banco~90_combout\ : std_logic;
SIGNAL \dadoEscrita[3]~input_o\ : std_logic;
SIGNAL \banco~55_q\ : std_logic;
SIGNAL \banco~63_q\ : std_logic;
SIGNAL \banco~47_q\ : std_logic;
SIGNAL \banco~91_combout\ : std_logic;
SIGNAL \banco~71_q\ : std_logic;
SIGNAL \banco~92_combout\ : std_logic;
SIGNAL \banco~31_q\ : std_logic;
SIGNAL \banco~23_q\ : std_logic;
SIGNAL \banco~15_q\ : std_logic;
SIGNAL \banco~93_combout\ : std_logic;
SIGNAL \banco~39_q\ : std_logic;
SIGNAL \banco~94_combout\ : std_logic;
SIGNAL \banco~95_combout\ : std_logic;
SIGNAL \dadoEscrita[4]~input_o\ : std_logic;
SIGNAL \banco~56_q\ : std_logic;
SIGNAL \banco~64_q\ : std_logic;
SIGNAL \banco~48_q\ : std_logic;
SIGNAL \banco~96_combout\ : std_logic;
SIGNAL \banco~72_q\ : std_logic;
SIGNAL \banco~97_combout\ : std_logic;
SIGNAL \banco~32_q\ : std_logic;
SIGNAL \banco~24_q\ : std_logic;
SIGNAL \banco~16_q\ : std_logic;
SIGNAL \banco~98_combout\ : std_logic;
SIGNAL \banco~40_q\ : std_logic;
SIGNAL \banco~99_combout\ : std_logic;
SIGNAL \banco~100_combout\ : std_logic;
SIGNAL \dadoEscrita[5]~input_o\ : std_logic;
SIGNAL \banco~57_q\ : std_logic;
SIGNAL \banco~65_q\ : std_logic;
SIGNAL \banco~49_q\ : std_logic;
SIGNAL \banco~101_combout\ : std_logic;
SIGNAL \banco~73_q\ : std_logic;
SIGNAL \banco~102_combout\ : std_logic;
SIGNAL \banco~33_q\ : std_logic;
SIGNAL \banco~25_q\ : std_logic;
SIGNAL \banco~17_q\ : std_logic;
SIGNAL \banco~103_combout\ : std_logic;
SIGNAL \banco~41_q\ : std_logic;
SIGNAL \banco~104_combout\ : std_logic;
SIGNAL \banco~105_combout\ : std_logic;
SIGNAL \dadoEscrita[6]~input_o\ : std_logic;
SIGNAL \banco~58_q\ : std_logic;
SIGNAL \banco~66_q\ : std_logic;
SIGNAL \banco~50_q\ : std_logic;
SIGNAL \banco~106_combout\ : std_logic;
SIGNAL \banco~74_q\ : std_logic;
SIGNAL \banco~107_combout\ : std_logic;
SIGNAL \banco~34_q\ : std_logic;
SIGNAL \banco~26_q\ : std_logic;
SIGNAL \banco~18_q\ : std_logic;
SIGNAL \banco~108_combout\ : std_logic;
SIGNAL \banco~42_q\ : std_logic;
SIGNAL \banco~109_combout\ : std_logic;
SIGNAL \banco~110_combout\ : std_logic;
SIGNAL \dadoEscrita[7]~input_o\ : std_logic;
SIGNAL \banco~59_q\ : std_logic;
SIGNAL \banco~67_q\ : std_logic;
SIGNAL \banco~51_q\ : std_logic;
SIGNAL \banco~111_combout\ : std_logic;
SIGNAL \banco~75_q\ : std_logic;
SIGNAL \banco~112_combout\ : std_logic;
SIGNAL \banco~35_q\ : std_logic;
SIGNAL \banco~27_q\ : std_logic;
SIGNAL \banco~19_q\ : std_logic;
SIGNAL \banco~113_combout\ : std_logic;
SIGNAL \banco~43_q\ : std_logic;
SIGNAL \banco~114_combout\ : std_logic;
SIGNAL \banco~115_combout\ : std_logic;
SIGNAL \enderecoLeituraB[0]~input_o\ : std_logic;
SIGNAL \enderecoLeituraB[1]~input_o\ : std_logic;
SIGNAL \banco~116_combout\ : std_logic;
SIGNAL \banco~117_combout\ : std_logic;
SIGNAL \banco~118_combout\ : std_logic;
SIGNAL \banco~119_combout\ : std_logic;
SIGNAL \enderecoLeituraB[2]~input_o\ : std_logic;
SIGNAL \banco~120_combout\ : std_logic;
SIGNAL \banco~121_combout\ : std_logic;
SIGNAL \banco~122_combout\ : std_logic;
SIGNAL \banco~123_combout\ : std_logic;
SIGNAL \banco~124_combout\ : std_logic;
SIGNAL \banco~125_combout\ : std_logic;
SIGNAL \banco~126_combout\ : std_logic;
SIGNAL \banco~127_combout\ : std_logic;
SIGNAL \banco~128_combout\ : std_logic;
SIGNAL \banco~129_combout\ : std_logic;
SIGNAL \banco~130_combout\ : std_logic;
SIGNAL \banco~131_combout\ : std_logic;
SIGNAL \banco~132_combout\ : std_logic;
SIGNAL \banco~133_combout\ : std_logic;
SIGNAL \banco~134_combout\ : std_logic;
SIGNAL \banco~135_combout\ : std_logic;
SIGNAL \banco~136_combout\ : std_logic;
SIGNAL \banco~137_combout\ : std_logic;
SIGNAL \banco~138_combout\ : std_logic;
SIGNAL \banco~139_combout\ : std_logic;
SIGNAL \banco~140_combout\ : std_logic;
SIGNAL \banco~141_combout\ : std_logic;
SIGNAL \banco~142_combout\ : std_logic;
SIGNAL \banco~143_combout\ : std_logic;
SIGNAL \banco~144_combout\ : std_logic;
SIGNAL \banco~145_combout\ : std_logic;
SIGNAL \banco~146_combout\ : std_logic;
SIGNAL \banco~147_combout\ : std_logic;
SIGNAL \banco~148_combout\ : std_logic;
SIGNAL \banco~149_combout\ : std_logic;
SIGNAL \banco~150_combout\ : std_logic;
SIGNAL \banco~151_combout\ : std_logic;
SIGNAL \banco~152_combout\ : std_logic;
SIGNAL \banco~153_combout\ : std_logic;
SIGNAL \banco~154_combout\ : std_logic;
SIGNAL \banco~155_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enderecoLeituraA <= enderecoLeituraA;
ww_enderecoLeituraB <= enderecoLeituraB;
ww_enderecoEscrita <= enderecoEscrita;
ww_dadoEscrita <= dadoEscrita;
ww_we <= we;
saidaA <= ww_saidaA;
saidaB <= ww_saidaB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\saidaA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~80_combout\,
	devoe => ww_devoe,
	o => \saidaA[0]~output_o\);

\saidaA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~85_combout\,
	devoe => ww_devoe,
	o => \saidaA[1]~output_o\);

\saidaA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~90_combout\,
	devoe => ww_devoe,
	o => \saidaA[2]~output_o\);

\saidaA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~95_combout\,
	devoe => ww_devoe,
	o => \saidaA[3]~output_o\);

\saidaA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~100_combout\,
	devoe => ww_devoe,
	o => \saidaA[4]~output_o\);

\saidaA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~105_combout\,
	devoe => ww_devoe,
	o => \saidaA[5]~output_o\);

\saidaA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~110_combout\,
	devoe => ww_devoe,
	o => \saidaA[6]~output_o\);

\saidaA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~115_combout\,
	devoe => ww_devoe,
	o => \saidaA[7]~output_o\);

\saidaB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~120_combout\,
	devoe => ww_devoe,
	o => \saidaB[0]~output_o\);

\saidaB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~125_combout\,
	devoe => ww_devoe,
	o => \saidaB[1]~output_o\);

\saidaB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~130_combout\,
	devoe => ww_devoe,
	o => \saidaB[2]~output_o\);

\saidaB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~135_combout\,
	devoe => ww_devoe,
	o => \saidaB[3]~output_o\);

\saidaB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~140_combout\,
	devoe => ww_devoe,
	o => \saidaB[4]~output_o\);

\saidaB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~145_combout\,
	devoe => ww_devoe,
	o => \saidaB[5]~output_o\);

\saidaB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~150_combout\,
	devoe => ww_devoe,
	o => \saidaB[6]~output_o\);

\saidaB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco~155_combout\,
	devoe => ww_devoe,
	o => \saidaB[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dadoEscrita[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(0),
	o => \dadoEscrita[0]~input_o\);

\enderecoEscrita[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoEscrita(0),
	o => \enderecoEscrita[0]~input_o\);

\we~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

\enderecoEscrita[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoEscrita(2),
	o => \enderecoEscrita[2]~input_o\);

\enderecoEscrita[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoEscrita(1),
	o => \enderecoEscrita[1]~input_o\);

\banco~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~156_combout\ = (\enderecoEscrita[0]~input_o\ & (\we~input_o\ & (\enderecoEscrita[2]~input_o\ & !\enderecoEscrita[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoEscrita[0]~input_o\,
	datab => \we~input_o\,
	datac => \enderecoEscrita[2]~input_o\,
	datad => \enderecoEscrita[1]~input_o\,
	combout => \banco~156_combout\);

\banco~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~52_q\);

\enderecoLeituraA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoLeituraA(0),
	o => \enderecoLeituraA[0]~input_o\);

\banco~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~157_combout\ = (\we~input_o\ & (\enderecoEscrita[1]~input_o\ & (\enderecoEscrita[2]~input_o\ & !\enderecoEscrita[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \enderecoEscrita[1]~input_o\,
	datac => \enderecoEscrita[2]~input_o\,
	datad => \enderecoEscrita[0]~input_o\,
	combout => \banco~157_combout\);

\banco~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~60_q\);

\enderecoLeituraA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoLeituraA(1),
	o => \enderecoLeituraA[1]~input_o\);

\banco~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~158_combout\ = (\we~input_o\ & (\enderecoEscrita[2]~input_o\ & (!\enderecoEscrita[0]~input_o\ & !\enderecoEscrita[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \enderecoEscrita[2]~input_o\,
	datac => \enderecoEscrita[0]~input_o\,
	datad => \enderecoEscrita[1]~input_o\,
	combout => \banco~158_combout\);

\banco~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~44_q\);

\banco~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~76_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~60_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~60_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~44_q\,
	combout => \banco~76_combout\);

\banco~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~159_combout\ = (\enderecoEscrita[0]~input_o\ & (\we~input_o\ & (\enderecoEscrita[1]~input_o\ & \enderecoEscrita[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoEscrita[0]~input_o\,
	datab => \we~input_o\,
	datac => \enderecoEscrita[1]~input_o\,
	datad => \enderecoEscrita[2]~input_o\,
	combout => \banco~159_combout\);

\banco~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~68_q\);

\banco~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~77_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~76_combout\ & ((\banco~68_q\))) # (!\banco~76_combout\ & (\banco~52_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~52_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~76_combout\,
	datad => \banco~68_q\,
	combout => \banco~77_combout\);

\banco~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~160_combout\ = (\we~input_o\ & (\enderecoEscrita[1]~input_o\ & (!\enderecoEscrita[0]~input_o\ & !\enderecoEscrita[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \enderecoEscrita[1]~input_o\,
	datac => \enderecoEscrita[0]~input_o\,
	datad => \enderecoEscrita[2]~input_o\,
	combout => \banco~160_combout\);

\banco~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~28_q\);

\banco~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~161_combout\ = (\enderecoEscrita[0]~input_o\ & (\we~input_o\ & (!\enderecoEscrita[1]~input_o\ & !\enderecoEscrita[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoEscrita[0]~input_o\,
	datab => \we~input_o\,
	datac => \enderecoEscrita[1]~input_o\,
	datad => \enderecoEscrita[2]~input_o\,
	combout => \banco~161_combout\);

\banco~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~20_q\);

\banco~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~162_combout\ = (\we~input_o\ & (!\enderecoEscrita[0]~input_o\ & (!\enderecoEscrita[1]~input_o\ & !\enderecoEscrita[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \enderecoEscrita[0]~input_o\,
	datac => \enderecoEscrita[1]~input_o\,
	datad => \enderecoEscrita[2]~input_o\,
	combout => \banco~162_combout\);

\banco~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~12_q\);

\banco~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~78_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~20_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~20_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~12_q\,
	combout => \banco~78_combout\);

\banco~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~163_combout\ = (\enderecoEscrita[0]~input_o\ & (\we~input_o\ & (\enderecoEscrita[1]~input_o\ & !\enderecoEscrita[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoEscrita[0]~input_o\,
	datab => \we~input_o\,
	datac => \enderecoEscrita[1]~input_o\,
	datad => \enderecoEscrita[2]~input_o\,
	combout => \banco~163_combout\);

\banco~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[0]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~36_q\);

\banco~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~79_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~78_combout\ & ((\banco~36_q\))) # (!\banco~78_combout\ & (\banco~28_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~28_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~78_combout\,
	datad => \banco~36_q\,
	combout => \banco~79_combout\);

\enderecoLeituraA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoLeituraA(2),
	o => \enderecoLeituraA[2]~input_o\);

\banco~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~80_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~77_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~77_combout\,
	datab => \banco~79_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~80_combout\);

\dadoEscrita[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(1),
	o => \dadoEscrita[1]~input_o\);

\banco~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~53_q\);

\banco~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~61_q\);

\banco~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~45_q\);

\banco~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~81_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~61_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~61_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~45_q\,
	combout => \banco~81_combout\);

\banco~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~69_q\);

\banco~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~82_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~81_combout\ & ((\banco~69_q\))) # (!\banco~81_combout\ & (\banco~53_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~53_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~81_combout\,
	datad => \banco~69_q\,
	combout => \banco~82_combout\);

\banco~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~29_q\);

\banco~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~21_q\);

\banco~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~13_q\);

\banco~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~83_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~21_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~21_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~13_q\,
	combout => \banco~83_combout\);

\banco~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[1]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~37_q\);

\banco~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~84_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~83_combout\ & ((\banco~37_q\))) # (!\banco~83_combout\ & (\banco~29_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~29_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~83_combout\,
	datad => \banco~37_q\,
	combout => \banco~84_combout\);

\banco~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~85_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~82_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~82_combout\,
	datab => \banco~84_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~85_combout\);

\dadoEscrita[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(2),
	o => \dadoEscrita[2]~input_o\);

\banco~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~54_q\);

\banco~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~62_q\);

\banco~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~46_q\);

\banco~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~86_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~62_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~62_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~46_q\,
	combout => \banco~86_combout\);

\banco~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~70_q\);

\banco~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~87_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~86_combout\ & ((\banco~70_q\))) # (!\banco~86_combout\ & (\banco~54_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~54_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~86_combout\,
	datad => \banco~70_q\,
	combout => \banco~87_combout\);

\banco~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~30_q\);

\banco~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~22_q\);

\banco~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~14_q\);

\banco~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~88_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~22_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~22_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~14_q\,
	combout => \banco~88_combout\);

\banco~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[2]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~38_q\);

\banco~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~89_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~88_combout\ & ((\banco~38_q\))) # (!\banco~88_combout\ & (\banco~30_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~30_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~88_combout\,
	datad => \banco~38_q\,
	combout => \banco~89_combout\);

\banco~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~90_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~87_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~87_combout\,
	datab => \banco~89_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~90_combout\);

\dadoEscrita[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(3),
	o => \dadoEscrita[3]~input_o\);

\banco~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~55_q\);

\banco~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~63_q\);

\banco~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~47_q\);

\banco~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~91_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~63_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~63_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~47_q\,
	combout => \banco~91_combout\);

\banco~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~71_q\);

\banco~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~92_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~91_combout\ & ((\banco~71_q\))) # (!\banco~91_combout\ & (\banco~55_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~55_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~91_combout\,
	datad => \banco~71_q\,
	combout => \banco~92_combout\);

\banco~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~31_q\);

\banco~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~23_q\);

\banco~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~15_q\);

\banco~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~93_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~23_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~23_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~15_q\,
	combout => \banco~93_combout\);

\banco~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[3]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~39_q\);

\banco~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~94_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~93_combout\ & ((\banco~39_q\))) # (!\banco~93_combout\ & (\banco~31_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~31_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~93_combout\,
	datad => \banco~39_q\,
	combout => \banco~94_combout\);

\banco~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~95_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~92_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~92_combout\,
	datab => \banco~94_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~95_combout\);

\dadoEscrita[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(4),
	o => \dadoEscrita[4]~input_o\);

\banco~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~56_q\);

\banco~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~64_q\);

\banco~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~48_q\);

\banco~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~96_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~64_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~64_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~48_q\,
	combout => \banco~96_combout\);

\banco~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~72_q\);

\banco~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~97_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~96_combout\ & ((\banco~72_q\))) # (!\banco~96_combout\ & (\banco~56_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~56_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~96_combout\,
	datad => \banco~72_q\,
	combout => \banco~97_combout\);

\banco~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~32_q\);

\banco~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~24_q\);

\banco~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~16_q\);

\banco~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~98_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~24_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~24_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~16_q\,
	combout => \banco~98_combout\);

\banco~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[4]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~40_q\);

\banco~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~99_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~98_combout\ & ((\banco~40_q\))) # (!\banco~98_combout\ & (\banco~32_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~32_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~98_combout\,
	datad => \banco~40_q\,
	combout => \banco~99_combout\);

\banco~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~100_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~97_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~97_combout\,
	datab => \banco~99_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~100_combout\);

\dadoEscrita[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(5),
	o => \dadoEscrita[5]~input_o\);

\banco~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~57_q\);

\banco~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~65_q\);

\banco~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~49_q\);

\banco~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~101_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~65_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~65_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~49_q\,
	combout => \banco~101_combout\);

\banco~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~73_q\);

\banco~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~102_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~101_combout\ & ((\banco~73_q\))) # (!\banco~101_combout\ & (\banco~57_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~57_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~101_combout\,
	datad => \banco~73_q\,
	combout => \banco~102_combout\);

\banco~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~33_q\);

\banco~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~25_q\);

\banco~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~17_q\);

\banco~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~103_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~25_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~25_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~17_q\,
	combout => \banco~103_combout\);

\banco~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[5]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~41_q\);

\banco~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~104_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~103_combout\ & ((\banco~41_q\))) # (!\banco~103_combout\ & (\banco~33_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~33_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~103_combout\,
	datad => \banco~41_q\,
	combout => \banco~104_combout\);

\banco~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~105_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~102_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~102_combout\,
	datab => \banco~104_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~105_combout\);

\dadoEscrita[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(6),
	o => \dadoEscrita[6]~input_o\);

\banco~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~58_q\);

\banco~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~66_q\);

\banco~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~50_q\);

\banco~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~106_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~66_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~66_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~50_q\,
	combout => \banco~106_combout\);

\banco~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~74_q\);

\banco~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~107_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~106_combout\ & ((\banco~74_q\))) # (!\banco~106_combout\ & (\banco~58_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~58_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~106_combout\,
	datad => \banco~74_q\,
	combout => \banco~107_combout\);

\banco~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~34_q\);

\banco~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~26_q\);

\banco~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~18_q\);

\banco~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~108_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~26_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~26_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~18_q\,
	combout => \banco~108_combout\);

\banco~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[6]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~42_q\);

\banco~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~109_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~108_combout\ & ((\banco~42_q\))) # (!\banco~108_combout\ & (\banco~34_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~34_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~108_combout\,
	datad => \banco~42_q\,
	combout => \banco~109_combout\);

\banco~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~110_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~107_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~107_combout\,
	datab => \banco~109_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~110_combout\);

\dadoEscrita[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dadoEscrita(7),
	o => \dadoEscrita[7]~input_o\);

\banco~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~59_q\);

\banco~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~67_q\);

\banco~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~51_q\);

\banco~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~111_combout\ = (\enderecoLeituraA[0]~input_o\ & (((\enderecoLeituraA[1]~input_o\)))) # (!\enderecoLeituraA[0]~input_o\ & ((\enderecoLeituraA[1]~input_o\ & (\banco~67_q\)) # (!\enderecoLeituraA[1]~input_o\ & ((\banco~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[0]~input_o\,
	datab => \banco~67_q\,
	datac => \enderecoLeituraA[1]~input_o\,
	datad => \banco~51_q\,
	combout => \banco~111_combout\);

\banco~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~75_q\);

\banco~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~112_combout\ = (\enderecoLeituraA[0]~input_o\ & ((\banco~111_combout\ & ((\banco~75_q\))) # (!\banco~111_combout\ & (\banco~59_q\)))) # (!\enderecoLeituraA[0]~input_o\ & (((\banco~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~59_q\,
	datab => \enderecoLeituraA[0]~input_o\,
	datac => \banco~111_combout\,
	datad => \banco~75_q\,
	combout => \banco~112_combout\);

\banco~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~35_q\);

\banco~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~27_q\);

\banco~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~19_q\);

\banco~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~113_combout\ = (\enderecoLeituraA[1]~input_o\ & (((\enderecoLeituraA[0]~input_o\)))) # (!\enderecoLeituraA[1]~input_o\ & ((\enderecoLeituraA[0]~input_o\ & (\banco~27_q\)) # (!\enderecoLeituraA[0]~input_o\ & ((\banco~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraA[1]~input_o\,
	datab => \banco~27_q\,
	datac => \enderecoLeituraA[0]~input_o\,
	datad => \banco~19_q\,
	combout => \banco~113_combout\);

\banco~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dadoEscrita[7]~input_o\,
	ena => \banco~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco~43_q\);

\banco~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~114_combout\ = (\enderecoLeituraA[1]~input_o\ & ((\banco~113_combout\ & ((\banco~43_q\))) # (!\banco~113_combout\ & (\banco~35_q\)))) # (!\enderecoLeituraA[1]~input_o\ & (((\banco~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~35_q\,
	datab => \enderecoLeituraA[1]~input_o\,
	datac => \banco~113_combout\,
	datad => \banco~43_q\,
	combout => \banco~114_combout\);

\banco~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~115_combout\ = (\enderecoLeituraA[2]~input_o\ & (\banco~112_combout\)) # (!\enderecoLeituraA[2]~input_o\ & ((\banco~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~112_combout\,
	datab => \banco~114_combout\,
	datad => \enderecoLeituraA[2]~input_o\,
	combout => \banco~115_combout\);

\enderecoLeituraB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoLeituraB(0),
	o => \enderecoLeituraB[0]~input_o\);

\enderecoLeituraB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoLeituraB(1),
	o => \enderecoLeituraB[1]~input_o\);

\banco~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~116_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~60_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~60_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~44_q\,
	combout => \banco~116_combout\);

\banco~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~117_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~116_combout\ & ((\banco~68_q\))) # (!\banco~116_combout\ & (\banco~52_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~52_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~116_combout\,
	datad => \banco~68_q\,
	combout => \banco~117_combout\);

\banco~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~118_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~20_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~20_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~12_q\,
	combout => \banco~118_combout\);

\banco~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~119_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~118_combout\ & ((\banco~36_q\))) # (!\banco~118_combout\ & (\banco~28_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~28_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~118_combout\,
	datad => \banco~36_q\,
	combout => \banco~119_combout\);

\enderecoLeituraB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoLeituraB(2),
	o => \enderecoLeituraB[2]~input_o\);

\banco~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~120_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~117_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~117_combout\,
	datab => \banco~119_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~120_combout\);

\banco~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~121_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~61_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~61_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~45_q\,
	combout => \banco~121_combout\);

\banco~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~122_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~121_combout\ & ((\banco~69_q\))) # (!\banco~121_combout\ & (\banco~53_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~53_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~121_combout\,
	datad => \banco~69_q\,
	combout => \banco~122_combout\);

\banco~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~123_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~21_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~21_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~13_q\,
	combout => \banco~123_combout\);

\banco~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~124_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~123_combout\ & ((\banco~37_q\))) # (!\banco~123_combout\ & (\banco~29_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~29_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~123_combout\,
	datad => \banco~37_q\,
	combout => \banco~124_combout\);

\banco~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~125_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~122_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~122_combout\,
	datab => \banco~124_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~125_combout\);

\banco~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~126_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~62_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~62_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~46_q\,
	combout => \banco~126_combout\);

\banco~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~127_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~126_combout\ & ((\banco~70_q\))) # (!\banco~126_combout\ & (\banco~54_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~54_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~126_combout\,
	datad => \banco~70_q\,
	combout => \banco~127_combout\);

\banco~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~128_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~22_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~22_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~14_q\,
	combout => \banco~128_combout\);

\banco~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~129_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~128_combout\ & ((\banco~38_q\))) # (!\banco~128_combout\ & (\banco~30_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~30_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~128_combout\,
	datad => \banco~38_q\,
	combout => \banco~129_combout\);

\banco~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~130_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~127_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~127_combout\,
	datab => \banco~129_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~130_combout\);

\banco~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~131_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~63_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~63_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~47_q\,
	combout => \banco~131_combout\);

\banco~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~132_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~131_combout\ & ((\banco~71_q\))) # (!\banco~131_combout\ & (\banco~55_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~55_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~131_combout\,
	datad => \banco~71_q\,
	combout => \banco~132_combout\);

\banco~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~133_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~23_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~23_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~15_q\,
	combout => \banco~133_combout\);

\banco~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~134_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~133_combout\ & ((\banco~39_q\))) # (!\banco~133_combout\ & (\banco~31_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~31_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~133_combout\,
	datad => \banco~39_q\,
	combout => \banco~134_combout\);

\banco~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~135_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~132_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~132_combout\,
	datab => \banco~134_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~135_combout\);

\banco~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~136_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~64_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~64_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~48_q\,
	combout => \banco~136_combout\);

\banco~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~137_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~136_combout\ & ((\banco~72_q\))) # (!\banco~136_combout\ & (\banco~56_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~56_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~136_combout\,
	datad => \banco~72_q\,
	combout => \banco~137_combout\);

\banco~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~138_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~24_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~24_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~16_q\,
	combout => \banco~138_combout\);

\banco~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~139_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~138_combout\ & ((\banco~40_q\))) # (!\banco~138_combout\ & (\banco~32_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~32_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~138_combout\,
	datad => \banco~40_q\,
	combout => \banco~139_combout\);

\banco~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~140_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~137_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~137_combout\,
	datab => \banco~139_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~140_combout\);

\banco~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~141_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~65_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~65_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~49_q\,
	combout => \banco~141_combout\);

\banco~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~142_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~141_combout\ & ((\banco~73_q\))) # (!\banco~141_combout\ & (\banco~57_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~57_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~141_combout\,
	datad => \banco~73_q\,
	combout => \banco~142_combout\);

\banco~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~143_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~25_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~25_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~17_q\,
	combout => \banco~143_combout\);

\banco~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~144_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~143_combout\ & ((\banco~41_q\))) # (!\banco~143_combout\ & (\banco~33_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~33_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~143_combout\,
	datad => \banco~41_q\,
	combout => \banco~144_combout\);

\banco~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~145_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~142_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~142_combout\,
	datab => \banco~144_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~145_combout\);

\banco~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~146_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~66_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~66_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~50_q\,
	combout => \banco~146_combout\);

\banco~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~147_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~146_combout\ & ((\banco~74_q\))) # (!\banco~146_combout\ & (\banco~58_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~58_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~146_combout\,
	datad => \banco~74_q\,
	combout => \banco~147_combout\);

\banco~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~148_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~26_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~26_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~18_q\,
	combout => \banco~148_combout\);

\banco~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~149_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~148_combout\ & ((\banco~42_q\))) # (!\banco~148_combout\ & (\banco~34_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~34_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~148_combout\,
	datad => \banco~42_q\,
	combout => \banco~149_combout\);

\banco~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~150_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~147_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~147_combout\,
	datab => \banco~149_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~150_combout\);

\banco~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~151_combout\ = (\enderecoLeituraB[0]~input_o\ & (((\enderecoLeituraB[1]~input_o\)))) # (!\enderecoLeituraB[0]~input_o\ & ((\enderecoLeituraB[1]~input_o\ & (\banco~67_q\)) # (!\enderecoLeituraB[1]~input_o\ & ((\banco~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[0]~input_o\,
	datab => \banco~67_q\,
	datac => \enderecoLeituraB[1]~input_o\,
	datad => \banco~51_q\,
	combout => \banco~151_combout\);

\banco~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~152_combout\ = (\enderecoLeituraB[0]~input_o\ & ((\banco~151_combout\ & ((\banco~75_q\))) # (!\banco~151_combout\ & (\banco~59_q\)))) # (!\enderecoLeituraB[0]~input_o\ & (((\banco~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~59_q\,
	datab => \enderecoLeituraB[0]~input_o\,
	datac => \banco~151_combout\,
	datad => \banco~75_q\,
	combout => \banco~152_combout\);

\banco~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~153_combout\ = (\enderecoLeituraB[1]~input_o\ & (((\enderecoLeituraB[0]~input_o\)))) # (!\enderecoLeituraB[1]~input_o\ & ((\enderecoLeituraB[0]~input_o\ & (\banco~27_q\)) # (!\enderecoLeituraB[0]~input_o\ & ((\banco~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoLeituraB[1]~input_o\,
	datab => \banco~27_q\,
	datac => \enderecoLeituraB[0]~input_o\,
	datad => \banco~19_q\,
	combout => \banco~153_combout\);

\banco~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~154_combout\ = (\enderecoLeituraB[1]~input_o\ & ((\banco~153_combout\ & ((\banco~43_q\))) # (!\banco~153_combout\ & (\banco~35_q\)))) # (!\enderecoLeituraB[1]~input_o\ & (((\banco~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~35_q\,
	datab => \enderecoLeituraB[1]~input_o\,
	datac => \banco~153_combout\,
	datad => \banco~43_q\,
	combout => \banco~154_combout\);

\banco~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco~155_combout\ = (\enderecoLeituraB[2]~input_o\ & (\banco~152_combout\)) # (!\enderecoLeituraB[2]~input_o\ & ((\banco~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco~152_combout\,
	datab => \banco~154_combout\,
	datad => \enderecoLeituraB[2]~input_o\,
	combout => \banco~155_combout\);

ww_saidaA(0) <= \saidaA[0]~output_o\;

ww_saidaA(1) <= \saidaA[1]~output_o\;

ww_saidaA(2) <= \saidaA[2]~output_o\;

ww_saidaA(3) <= \saidaA[3]~output_o\;

ww_saidaA(4) <= \saidaA[4]~output_o\;

ww_saidaA(5) <= \saidaA[5]~output_o\;

ww_saidaA(6) <= \saidaA[6]~output_o\;

ww_saidaA(7) <= \saidaA[7]~output_o\;

ww_saidaB(0) <= \saidaB[0]~output_o\;

ww_saidaB(1) <= \saidaB[1]~output_o\;

ww_saidaB(2) <= \saidaB[2]~output_o\;

ww_saidaB(3) <= \saidaB[3]~output_o\;

ww_saidaB(4) <= \saidaB[4]~output_o\;

ww_saidaB(5) <= \saidaB[5]~output_o\;

ww_saidaB(6) <= \saidaB[6]~output_o\;

ww_saidaB(7) <= \saidaB[7]~output_o\;
END structure;


