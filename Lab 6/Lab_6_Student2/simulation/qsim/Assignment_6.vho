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

-- DATE "05/07/2021 22:47:27"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	updown_4bit_counter IS
    PORT (
	Clk : IN std_logic;
	M : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END updown_4bit_counter;

ARCHITECTURE structure OF updown_4bit_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \t_ff0|temp~0_combout\ : std_logic;
SIGNAL \t_ff0|temp~q\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \t_ff1|temp~0_combout\ : std_logic;
SIGNAL \t_ff1|temp~q\ : std_logic;
SIGNAL \t_ff2|temp~0_combout\ : std_logic;
SIGNAL \t_ff2|temp~q\ : std_logic;
SIGNAL \t_ff3|temp~0_combout\ : std_logic;
SIGNAL \t_ff3|temp~q\ : std_logic;
SIGNAL next_clk : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Clk~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_M <= M;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Clk~input_o\ <= NOT \Clk~input_o\;

\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_ff0|temp~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_ff1|temp~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_ff2|temp~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_ff3|temp~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\t_ff0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t_ff0|temp~0_combout\ = !\t_ff0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_ff0|temp~q\,
	combout => \t_ff0|temp~0_combout\);

\t_ff0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \t_ff0|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_ff0|temp~q\);

\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

\next_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_clk(0) = LCELL(\t_ff0|temp~q\ $ (!\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_ff0|temp~q\,
	datad => \M~input_o\,
	combout => next_clk(0));

\t_ff1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t_ff1|temp~0_combout\ = !\t_ff1|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_ff1|temp~q\,
	combout => \t_ff1|temp~0_combout\);

\t_ff1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => next_clk(0),
	d => \t_ff1|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_ff1|temp~q\);

\next_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_clk(1) = LCELL(\t_ff1|temp~q\ $ (!\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_ff1|temp~q\,
	datad => \M~input_o\,
	combout => next_clk(1));

\t_ff2|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t_ff2|temp~0_combout\ = !\t_ff2|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_ff2|temp~q\,
	combout => \t_ff2|temp~0_combout\);

\t_ff2|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => next_clk(1),
	d => \t_ff2|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_ff2|temp~q\);

\next_clk[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_clk(2) = LCELL(\t_ff2|temp~q\ $ (!\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_ff2|temp~q\,
	datad => \M~input_o\,
	combout => next_clk(2));

\t_ff3|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t_ff3|temp~0_combout\ = !\t_ff3|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_ff3|temp~q\,
	combout => \t_ff3|temp~0_combout\);

\t_ff3|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => next_clk(2),
	d => \t_ff3|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_ff3|temp~q\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


