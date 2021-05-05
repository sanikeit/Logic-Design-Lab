-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "04/27/2021 07:57:09"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	component1 IS
    PORT (
	X : IN std_logic;
	Y : IN std_logic;
	Z : IN std_logic;
	A : BUFFER std_logic;
	B : BUFFER std_logic
	);
END component1;

-- Design Ports Information
-- A	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF component1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \A~0_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_Z <= Z;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y8_N16
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\Y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X2_Y7_N0
\A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~0_combout\ = \X~input_o\ $ (\Z~input_o\ $ (\Y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \Z~input_o\,
	datad => \Y~input_o\,
	combout => \A~0_combout\);

-- Location: LCCOMB_X2_Y7_N2
\B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B~0_combout\ = (\X~input_o\ & ((\Z~input_o\) # (\Y~input_o\))) # (!\X~input_o\ & (\Z~input_o\ & \Y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \Z~input_o\,
	datad => \Y~input_o\,
	combout => \B~0_combout\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;
END structure;


