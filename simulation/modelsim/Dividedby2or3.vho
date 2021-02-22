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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/29/2020 17:30:46"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Dividedby2or3 IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	y1 : BUFFER std_logic;
	y2 : BUFFER std_logic
	);
END Dividedby2or3;

-- Design Ports Information
-- y1	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Dividedby2or3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \reg_fstate.C~0_combout\ : std_logic;
SIGNAL \fstate.C~q\ : std_logic;
SIGNAL \reg_fstate.E~0_combout\ : std_logic;
SIGNAL \fstate.E~q\ : std_logic;
SIGNAL \reg_fstate.A~0_combout\ : std_logic;
SIGNAL \fstate.A~q\ : std_logic;
SIGNAL \reg_fstate.B~0_combout\ : std_logic;
SIGNAL \fstate.B~q\ : std_logic;
SIGNAL \reg_fstate.D~0_combout\ : std_logic;
SIGNAL \fstate.D~q\ : std_logic;
SIGNAL \reg_fstate.G~0_combout\ : std_logic;
SIGNAL \fstate.G~q\ : std_logic;
SIGNAL \reg_fstate.F~0_combout\ : std_logic;
SIGNAL \fstate.F~q\ : std_logic;
SIGNAL \y1~0_combout\ : std_logic;
SIGNAL \y2~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_fstate.A~q\ : std_logic;
SIGNAL \ALT_INV_fstate.D~q\ : std_logic;
SIGNAL \ALT_INV_fstate.F~q\ : std_logic;
SIGNAL \ALT_INV_fstate.G~q\ : std_logic;
SIGNAL \ALT_INV_fstate.B~q\ : std_logic;
SIGNAL \ALT_INV_fstate.E~q\ : std_logic;
SIGNAL \ALT_INV_fstate.C~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
y1 <= ww_y1;
y2 <= ww_y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_fstate.A~q\ <= NOT \fstate.A~q\;
\ALT_INV_fstate.D~q\ <= NOT \fstate.D~q\;
\ALT_INV_fstate.F~q\ <= NOT \fstate.F~q\;
\ALT_INV_fstate.G~q\ <= NOT \fstate.G~q\;
\ALT_INV_fstate.B~q\ <= NOT \fstate.B~q\;
\ALT_INV_fstate.E~q\ <= NOT \fstate.E~q\;
\ALT_INV_fstate.C~q\ <= NOT \fstate.C~q\;

-- Location: IOOBUF_X89_Y9_N5
\y1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y1~0_combout\,
	devoe => ww_devoe,
	o => ww_y1);

-- Location: IOOBUF_X89_Y9_N22
\y2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y2~0_combout\,
	devoe => ww_devoe,
	o => ww_y2);

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y9_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LABCELL_X88_Y9_N39
\reg_fstate.C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.C~0_combout\ = ( \fstate.B~q\ & ( (!\reset~input_o\ & ((!\x~input_o\) # (\fstate.C~q\))) ) ) # ( !\fstate.B~q\ & ( (!\reset~input_o\ & (\x~input_o\ & \fstate.C~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_x~input_o\,
	datad => \ALT_INV_fstate.C~q\,
	dataf => \ALT_INV_fstate.B~q\,
	combout => \reg_fstate.C~0_combout\);

-- Location: FF_X88_Y9_N41
\fstate.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.C~q\);

-- Location: LABCELL_X88_Y9_N30
\reg_fstate.E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.E~0_combout\ = ( \fstate.C~q\ & ( (!\reset~input_o\ & !\x~input_o\) ) ) # ( !\fstate.C~q\ & ( (!\reset~input_o\ & (!\x~input_o\ & \fstate.F~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_x~input_o\,
	datad => \ALT_INV_fstate.F~q\,
	dataf => \ALT_INV_fstate.C~q\,
	combout => \reg_fstate.E~0_combout\);

-- Location: FF_X88_Y9_N32
\fstate.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E~q\);

-- Location: LABCELL_X88_Y9_N42
\reg_fstate.A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.A~0_combout\ = ( \fstate.A~q\ & ( \fstate.E~q\ & ( (\x~input_o\ & !\reset~input_o\) ) ) ) # ( !\fstate.A~q\ & ( \fstate.E~q\ & ( (\x~input_o\ & !\reset~input_o\) ) ) ) # ( \fstate.A~q\ & ( !\fstate.E~q\ & ( !\reset~input_o\ ) ) ) # ( 
-- !\fstate.A~q\ & ( !\fstate.E~q\ & ( (\x~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_fstate.A~q\,
	dataf => \ALT_INV_fstate.E~q\,
	combout => \reg_fstate.A~0_combout\);

-- Location: FF_X88_Y9_N44
\fstate.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.A~q\);

-- Location: LABCELL_X88_Y9_N9
\reg_fstate.B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.B~0_combout\ = ( \fstate.A~q\ & ( (!\reset~input_o\ & (\x~input_o\ & ((\fstate.F~q\) # (\fstate.E~q\)))) ) ) # ( !\fstate.A~q\ & ( (!\reset~input_o\ & \x~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_x~input_o\,
	datac => \ALT_INV_fstate.E~q\,
	datad => \ALT_INV_fstate.F~q\,
	dataf => \ALT_INV_fstate.A~q\,
	combout => \reg_fstate.B~0_combout\);

-- Location: FF_X88_Y9_N11
\fstate.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.B~q\);

-- Location: LABCELL_X88_Y9_N33
\reg_fstate.D~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.D~0_combout\ = ( \fstate.B~q\ & ( (!\reset~input_o\ & \x~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_x~input_o\,
	dataf => \ALT_INV_fstate.B~q\,
	combout => \reg_fstate.D~0_combout\);

-- Location: FF_X88_Y9_N35
\fstate.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.D~q\);

-- Location: LABCELL_X88_Y9_N6
\reg_fstate.G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.G~0_combout\ = ( \fstate.D~q\ & ( (\x~input_o\ & !\reset~input_o\) ) ) # ( !\fstate.D~q\ & ( (\x~input_o\ & (!\reset~input_o\ & \fstate.G~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_fstate.G~q\,
	dataf => \ALT_INV_fstate.D~q\,
	combout => \reg_fstate.G~0_combout\);

-- Location: FF_X88_Y9_N8
\fstate.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.G~q\);

-- Location: LABCELL_X88_Y9_N36
\reg_fstate.F~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.F~0_combout\ = ( \fstate.D~q\ & ( (!\reset~input_o\ & !\x~input_o\) ) ) # ( !\fstate.D~q\ & ( (!\reset~input_o\ & (\fstate.G~q\ & !\x~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_fstate.G~q\,
	datac => \ALT_INV_x~input_o\,
	dataf => \ALT_INV_fstate.D~q\,
	combout => \reg_fstate.F~0_combout\);

-- Location: FF_X88_Y9_N38
\fstate.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.F~q\);

-- Location: LABCELL_X88_Y9_N51
\y1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1~0_combout\ = ( !\reset~input_o\ & ( \x~input_o\ & ( \fstate.D~q\ ) ) ) # ( !\reset~input_o\ & ( !\x~input_o\ & ( (!\fstate.A~q\) # (\fstate.F~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fstate.F~q\,
	datab => \ALT_INV_fstate.A~q\,
	datac => \ALT_INV_fstate.D~q\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \y1~0_combout\);

-- Location: LABCELL_X88_Y9_N54
\y2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y2~0_combout\ = ( !\fstate.D~q\ & ( !\fstate.B~q\ & ( (!\x~input_o\ & (!\reset~input_o\ & !\fstate.G~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_fstate.G~q\,
	datae => \ALT_INV_fstate.D~q\,
	dataf => \ALT_INV_fstate.B~q\,
	combout => \y2~0_combout\);

-- Location: LABCELL_X85_Y21_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


