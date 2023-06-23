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

-- DATE "06/22/2023 22:48:47"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	contador IS
    PORT (
	start : IN std_logic;
	clk : IN std_logic;
	sal : OUT std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- sal	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sal : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \ff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sal~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \ff~combout\ : std_logic;
SIGNAL \ff~clkctrl_outclk\ : std_logic;
SIGNAL \cont_0|qout~0_combout\ : std_logic;
SIGNAL \cont_0|qout~q\ : std_logic;
SIGNAL \cont_1|qout~0_combout\ : std_logic;
SIGNAL \cont_1|qout~q\ : std_logic;
SIGNAL \cont_3|qout~0_combout\ : std_logic;
SIGNAL \cont_3|qout~q\ : std_logic;
SIGNAL \cont_2|qout~0_combout\ : std_logic;
SIGNAL \cont_2|qout~q\ : std_logic;
SIGNAL \sal~0_combout\ : std_logic;
SIGNAL \cont_3|ALT_INV_qout~q\ : std_logic;
SIGNAL \ALT_INV_sal~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_start <= start;
ww_clk <= clk;
sal <= ww_sal;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ff~combout\);
\cont_3|ALT_INV_qout~q\ <= NOT \cont_3|qout~q\;
\ALT_INV_sal~0_combout\ <= NOT \sal~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N2
\sal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sal~0_combout\,
	devoe => ww_devoe,
	o => \sal~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont_0|qout~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont_1|qout~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont_2|qout~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont_3|ALT_INV_qout~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X1_Y11_N14
ff : cycloneive_lcell_comb
-- Equation(s):
-- \ff~combout\ = LCELL((\start~input_o\ & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \clk~input_o\,
	combout => \ff~combout\);

-- Location: CLKCTRL_G2
\ff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ff~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y6_N12
\cont_0|qout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_0|qout~0_combout\ = !\cont_0|qout~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_0|qout~q\,
	combout => \cont_0|qout~0_combout\);

-- Location: FF_X1_Y6_N13
\cont_0|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ff~clkctrl_outclk\,
	d => \cont_0|qout~0_combout\,
	clrn => \ALT_INV_sal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_0|qout~q\);

-- Location: LCCOMB_X1_Y6_N4
\cont_1|qout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_1|qout~0_combout\ = \cont_1|qout~q\ $ (\cont_0|qout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_1|qout~q\,
	datad => \cont_0|qout~q\,
	combout => \cont_1|qout~0_combout\);

-- Location: FF_X1_Y6_N5
\cont_1|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ff~clkctrl_outclk\,
	d => \cont_1|qout~0_combout\,
	clrn => \ALT_INV_sal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_1|qout~q\);

-- Location: LCCOMB_X1_Y6_N26
\cont_3|qout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_3|qout~0_combout\ = \cont_3|qout~q\ $ (((\cont_0|qout~q\ & \cont_1|qout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_0|qout~q\,
	datac => \cont_3|qout~q\,
	datad => \cont_1|qout~q\,
	combout => \cont_3|qout~0_combout\);

-- Location: FF_X1_Y6_N27
\cont_3|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ff~clkctrl_outclk\,
	d => \cont_3|qout~0_combout\,
	clrn => \ALT_INV_sal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_3|qout~q\);

-- Location: LCCOMB_X1_Y6_N2
\cont_2|qout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_2|qout~0_combout\ = \cont_2|qout~q\ $ (((\cont_3|qout~q\ & \cont_0|qout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_3|qout~q\,
	datac => \cont_2|qout~q\,
	datad => \cont_0|qout~q\,
	combout => \cont_2|qout~0_combout\);

-- Location: FF_X1_Y6_N3
\cont_2|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ff~clkctrl_outclk\,
	d => \cont_2|qout~0_combout\,
	clrn => \ALT_INV_sal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_2|qout~q\);

-- Location: LCCOMB_X1_Y6_N28
\sal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sal~0_combout\ = (!\cont_0|qout~q\ & (\cont_1|qout~q\ & (\cont_3|qout~q\ & !\cont_2|qout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_0|qout~q\,
	datab => \cont_1|qout~q\,
	datac => \cont_3|qout~q\,
	datad => \cont_2|qout~q\,
	combout => \sal~0_combout\);

ww_sal <= \sal~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


