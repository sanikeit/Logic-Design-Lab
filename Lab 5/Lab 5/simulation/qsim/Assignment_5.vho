-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/05/2021 19:20:20"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sevensegment_decoder IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	seven_segment : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END sevensegment_decoder;

ARCHITECTURE structure OF sevensegment_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seven_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL \seven_segment[0]~output_o\ : std_logic;
SIGNAL \seven_segment[1]~output_o\ : std_logic;
SIGNAL \seven_segment[2]~output_o\ : std_logic;
SIGNAL \seven_segment[3]~output_o\ : std_logic;
SIGNAL \seven_segment[4]~output_o\ : std_logic;
SIGNAL \seven_segment[5]~output_o\ : std_logic;
SIGNAL \seven_segment[6]~output_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_input <= input;
seven_segment <= ww_seven_segment;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;

\seven_segment[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[0]~output_o\);

\seven_segment[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[1]~output_o\);

\seven_segment[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[2]~output_o\);

\seven_segment[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[3]~output_o\);

\seven_segment[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[4]~output_o\);

\seven_segment[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[5]~output_o\);

\seven_segment[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seven_segment[6]~output_o\);

\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\input[1]~input_o\ & (!\input[3]~input_o\ & ((!\input[2]~input_o\) # (!\input[0]~input_o\)))) # (!\input[1]~input_o\ & ((\input[2]~input_o\ $ (\input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux6~0_combout\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\input[0]~input_o\ & ((\input[1]~input_o\) # (\input[2]~input_o\ $ (!\input[3]~input_o\)))) # (!\input[0]~input_o\ & ((\input[2]~input_o\ & ((\input[3]~input_o\))) # (!\input[2]~input_o\ & (\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux5~0_combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\input[0]~input_o\) # ((\input[1]~input_o\ & ((\input[3]~input_o\))) # (!\input[1]~input_o\ & (\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux4~0_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\input[1]~input_o\ & ((\input[3]~input_o\) # ((\input[0]~input_o\ & \input[2]~input_o\)))) # (!\input[1]~input_o\ & (\input[2]~input_o\ $ (((\input[0]~input_o\ & !\input[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\input[2]~input_o\ & (((\input[3]~input_o\)))) # (!\input[2]~input_o\ & (\input[1]~input_o\ & ((\input[3]~input_o\) # (!\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\input[2]~input_o\ & ((\input[3]~input_o\) # (\input[0]~input_o\ $ (\input[1]~input_o\)))) # (!\input[2]~input_o\ & (((\input[1]~input_o\ & \input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\input[1]~input_o\ & (((\input[3]~input_o\)))) # (!\input[1]~input_o\ & (\input[2]~input_o\ $ (((\input[0]~input_o\ & !\input[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux0~0_combout\);

ww_seven_segment(0) <= \seven_segment[0]~output_o\;

ww_seven_segment(1) <= \seven_segment[1]~output_o\;

ww_seven_segment(2) <= \seven_segment[2]~output_o\;

ww_seven_segment(3) <= \seven_segment[3]~output_o\;

ww_seven_segment(4) <= \seven_segment[4]~output_o\;

ww_seven_segment(5) <= \seven_segment[5]~output_o\;

ww_seven_segment(6) <= \seven_segment[6]~output_o\;
END structure;


