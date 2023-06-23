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

-- DATE "06/23/2023 15:57:03"

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

ENTITY 	main IS
    PORT (
	clk : IN std_logic;
	btn : IN std_logic;
	lluvia : IN std_logic;
	frio : IN std_logic;
	calor : IN std_logic;
	PIR : IN std_logic;
	puerta : OUT std_logic;
	comedero : OUT std_logic;
	alarma : OUT std_logic;
	led : OUT std_logic;
	salida_ff : OUT std_logic_vector(1 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- btn	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lluvia	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- frio	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- calor	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIR	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comedero	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_ff[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_ff[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
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
SIGNAL ww_btn : std_logic;
SIGNAL ww_lluvia : std_logic;
SIGNAL ww_frio : std_logic;
SIGNAL ww_calor : std_logic;
SIGNAL ww_PIR : std_logic;
SIGNAL ww_puerta : std_logic;
SIGNAL ww_comedero : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_salida_ff : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \lluvia~input_o\ : std_logic;
SIGNAL \frio~input_o\ : std_logic;
SIGNAL \calor~input_o\ : std_logic;
SIGNAL \PIR~input_o\ : std_logic;
SIGNAL \puerta~output_o\ : std_logic;
SIGNAL \comedero~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \salida_ff[0]~output_o\ : std_logic;
SIGNAL \salida_ff[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_cont|Add0~0_combout\ : std_logic;
SIGNAL \div_cont|cuenta[0]~12_combout\ : std_logic;
SIGNAL \div_cont|Add0~1\ : std_logic;
SIGNAL \div_cont|Add0~2_combout\ : std_logic;
SIGNAL \div_cont|Add0~3\ : std_logic;
SIGNAL \div_cont|Add0~4_combout\ : std_logic;
SIGNAL \div_cont|Add0~5\ : std_logic;
SIGNAL \div_cont|Add0~6_combout\ : std_logic;
SIGNAL \div_cont|Add0~7\ : std_logic;
SIGNAL \div_cont|Add0~8_combout\ : std_logic;
SIGNAL \div_cont|Add0~9\ : std_logic;
SIGNAL \div_cont|Add0~10_combout\ : std_logic;
SIGNAL \div_cont|Add0~11\ : std_logic;
SIGNAL \div_cont|Add0~12_combout\ : std_logic;
SIGNAL \div_cont|cuenta~11_combout\ : std_logic;
SIGNAL \div_cont|Add0~13\ : std_logic;
SIGNAL \div_cont|Add0~14_combout\ : std_logic;
SIGNAL \div_cont|Add0~15\ : std_logic;
SIGNAL \div_cont|Add0~16_combout\ : std_logic;
SIGNAL \div_cont|Add0~17\ : std_logic;
SIGNAL \div_cont|Add0~18_combout\ : std_logic;
SIGNAL \div_cont|Add0~19\ : std_logic;
SIGNAL \div_cont|Add0~20_combout\ : std_logic;
SIGNAL \div_cont|Add0~21\ : std_logic;
SIGNAL \div_cont|Add0~22_combout\ : std_logic;
SIGNAL \div_cont|cuenta~10_combout\ : std_logic;
SIGNAL \div_cont|Equal0~5_combout\ : std_logic;
SIGNAL \div_cont|Add0~23\ : std_logic;
SIGNAL \div_cont|Add0~24_combout\ : std_logic;
SIGNAL \div_cont|cuenta~9_combout\ : std_logic;
SIGNAL \div_cont|Add0~25\ : std_logic;
SIGNAL \div_cont|Add0~26_combout\ : std_logic;
SIGNAL \div_cont|cuenta~8_combout\ : std_logic;
SIGNAL \div_cont|Add0~27\ : std_logic;
SIGNAL \div_cont|Add0~28_combout\ : std_logic;
SIGNAL \div_cont|cuenta~7_combout\ : std_logic;
SIGNAL \div_cont|Add0~29\ : std_logic;
SIGNAL \div_cont|Add0~30_combout\ : std_logic;
SIGNAL \div_cont|Add0~31\ : std_logic;
SIGNAL \div_cont|Add0~32_combout\ : std_logic;
SIGNAL \div_cont|cuenta~6_combout\ : std_logic;
SIGNAL \div_cont|Add0~33\ : std_logic;
SIGNAL \div_cont|Add0~34_combout\ : std_logic;
SIGNAL \div_cont|Add0~35\ : std_logic;
SIGNAL \div_cont|Add0~36_combout\ : std_logic;
SIGNAL \div_cont|cuenta~5_combout\ : std_logic;
SIGNAL \div_cont|Add0~37\ : std_logic;
SIGNAL \div_cont|Add0~38_combout\ : std_logic;
SIGNAL \div_cont|cuenta~4_combout\ : std_logic;
SIGNAL \div_cont|Add0~39\ : std_logic;
SIGNAL \div_cont|Add0~40_combout\ : std_logic;
SIGNAL \div_cont|cuenta~3_combout\ : std_logic;
SIGNAL \div_cont|Add0~41\ : std_logic;
SIGNAL \div_cont|Add0~42_combout\ : std_logic;
SIGNAL \div_cont|cuenta~2_combout\ : std_logic;
SIGNAL \div_cont|Add0~43\ : std_logic;
SIGNAL \div_cont|Add0~44_combout\ : std_logic;
SIGNAL \div_cont|cuenta~1_combout\ : std_logic;
SIGNAL \div_cont|Add0~45\ : std_logic;
SIGNAL \div_cont|Add0~46_combout\ : std_logic;
SIGNAL \div_cont|Add0~47\ : std_logic;
SIGNAL \div_cont|Add0~48_combout\ : std_logic;
SIGNAL \div_cont|cuenta~0_combout\ : std_logic;
SIGNAL \div_cont|Add0~49\ : std_logic;
SIGNAL \div_cont|Add0~50_combout\ : std_logic;
SIGNAL \div_cont|Add0~51\ : std_logic;
SIGNAL \div_cont|Add0~52_combout\ : std_logic;
SIGNAL \div_cont|Add0~53\ : std_logic;
SIGNAL \div_cont|Add0~54_combout\ : std_logic;
SIGNAL \div_cont|Equal0~0_combout\ : std_logic;
SIGNAL \div_cont|Equal0~2_combout\ : std_logic;
SIGNAL \div_cont|Equal0~1_combout\ : std_logic;
SIGNAL \div_cont|Equal0~3_combout\ : std_logic;
SIGNAL \div_cont|Equal0~4_combout\ : std_logic;
SIGNAL \div_cont|Equal0~7_combout\ : std_logic;
SIGNAL \div_cont|Equal0~6_combout\ : std_logic;
SIGNAL \div_cont|Equal0~8_combout\ : std_logic;
SIGNAL \div_cont|salida~0_combout\ : std_logic;
SIGNAL \div_cont|salida~q\ : std_logic;
SIGNAL \div_cont|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \div_cont|ALT_INV_salida~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_btn <= btn;
ww_lluvia <= lluvia;
ww_frio <= frio;
ww_calor <= calor;
ww_PIR <= PIR;
puerta <= ww_puerta;
comedero <= ww_comedero;
alarma <= ww_alarma;
led <= ww_led;
salida_ff <= ww_salida_ff;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\div_cont|ALT_INV_salida~q\ <= NOT \div_cont|salida~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\puerta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \puerta~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\comedero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \comedero~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\alarma~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cont|ALT_INV_salida~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\salida_ff[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \salida_ff[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\salida_ff[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \salida_ff[1]~output_o\);

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

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y6_N4
\div_cont|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~0_combout\ = \div_cont|cuenta\(0) $ (GND)
-- \div_cont|Add0~1\ = CARRY(!\div_cont|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(0),
	datad => VCC,
	combout => \div_cont|Add0~0_combout\,
	cout => \div_cont|Add0~1\);

-- Location: LCCOMB_X29_Y6_N16
\div_cont|cuenta[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta[0]~12_combout\ = !\div_cont|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_cont|Add0~0_combout\,
	combout => \div_cont|cuenta[0]~12_combout\);

-- Location: FF_X30_Y6_N5
\div_cont|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \div_cont|cuenta[0]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(0));

-- Location: LCCOMB_X30_Y6_N6
\div_cont|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~2_combout\ = (\div_cont|cuenta\(1) & (!\div_cont|Add0~1\)) # (!\div_cont|cuenta\(1) & ((\div_cont|Add0~1\) # (GND)))
-- \div_cont|Add0~3\ = CARRY((!\div_cont|Add0~1\) # (!\div_cont|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(1),
	datad => VCC,
	cin => \div_cont|Add0~1\,
	combout => \div_cont|Add0~2_combout\,
	cout => \div_cont|Add0~3\);

-- Location: FF_X30_Y6_N7
\div_cont|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(1));

-- Location: LCCOMB_X30_Y6_N8
\div_cont|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~4_combout\ = (\div_cont|cuenta\(2) & (\div_cont|Add0~3\ $ (GND))) # (!\div_cont|cuenta\(2) & (!\div_cont|Add0~3\ & VCC))
-- \div_cont|Add0~5\ = CARRY((\div_cont|cuenta\(2) & !\div_cont|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(2),
	datad => VCC,
	cin => \div_cont|Add0~3\,
	combout => \div_cont|Add0~4_combout\,
	cout => \div_cont|Add0~5\);

-- Location: FF_X30_Y6_N9
\div_cont|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(2));

-- Location: LCCOMB_X30_Y6_N10
\div_cont|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~6_combout\ = (\div_cont|cuenta\(3) & (!\div_cont|Add0~5\)) # (!\div_cont|cuenta\(3) & ((\div_cont|Add0~5\) # (GND)))
-- \div_cont|Add0~7\ = CARRY((!\div_cont|Add0~5\) # (!\div_cont|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(3),
	datad => VCC,
	cin => \div_cont|Add0~5\,
	combout => \div_cont|Add0~6_combout\,
	cout => \div_cont|Add0~7\);

-- Location: FF_X30_Y6_N11
\div_cont|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(3));

-- Location: LCCOMB_X30_Y6_N12
\div_cont|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~8_combout\ = (\div_cont|cuenta\(4) & (\div_cont|Add0~7\ $ (GND))) # (!\div_cont|cuenta\(4) & (!\div_cont|Add0~7\ & VCC))
-- \div_cont|Add0~9\ = CARRY((\div_cont|cuenta\(4) & !\div_cont|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(4),
	datad => VCC,
	cin => \div_cont|Add0~7\,
	combout => \div_cont|Add0~8_combout\,
	cout => \div_cont|Add0~9\);

-- Location: FF_X30_Y6_N13
\div_cont|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(4));

-- Location: LCCOMB_X30_Y6_N14
\div_cont|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~10_combout\ = (\div_cont|cuenta\(5) & (!\div_cont|Add0~9\)) # (!\div_cont|cuenta\(5) & ((\div_cont|Add0~9\) # (GND)))
-- \div_cont|Add0~11\ = CARRY((!\div_cont|Add0~9\) # (!\div_cont|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(5),
	datad => VCC,
	cin => \div_cont|Add0~9\,
	combout => \div_cont|Add0~10_combout\,
	cout => \div_cont|Add0~11\);

-- Location: FF_X30_Y6_N15
\div_cont|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(5));

-- Location: LCCOMB_X30_Y6_N16
\div_cont|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~12_combout\ = (\div_cont|cuenta\(6) & (\div_cont|Add0~11\ $ (GND))) # (!\div_cont|cuenta\(6) & (!\div_cont|Add0~11\ & VCC))
-- \div_cont|Add0~13\ = CARRY((\div_cont|cuenta\(6) & !\div_cont|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(6),
	datad => VCC,
	cin => \div_cont|Add0~11\,
	combout => \div_cont|Add0~12_combout\,
	cout => \div_cont|Add0~13\);

-- Location: LCCOMB_X30_Y6_N2
\div_cont|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~11_combout\ = (\div_cont|Add0~12_combout\ & !\div_cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Add0~12_combout\,
	datad => \div_cont|Equal0~8_combout\,
	combout => \div_cont|cuenta~11_combout\);

-- Location: FF_X30_Y6_N3
\div_cont|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(6));

-- Location: LCCOMB_X30_Y6_N18
\div_cont|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~14_combout\ = (\div_cont|cuenta\(7) & (!\div_cont|Add0~13\)) # (!\div_cont|cuenta\(7) & ((\div_cont|Add0~13\) # (GND)))
-- \div_cont|Add0~15\ = CARRY((!\div_cont|Add0~13\) # (!\div_cont|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(7),
	datad => VCC,
	cin => \div_cont|Add0~13\,
	combout => \div_cont|Add0~14_combout\,
	cout => \div_cont|Add0~15\);

-- Location: FF_X30_Y6_N19
\div_cont|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(7));

-- Location: LCCOMB_X30_Y6_N20
\div_cont|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~16_combout\ = (\div_cont|cuenta\(8) & (\div_cont|Add0~15\ $ (GND))) # (!\div_cont|cuenta\(8) & (!\div_cont|Add0~15\ & VCC))
-- \div_cont|Add0~17\ = CARRY((\div_cont|cuenta\(8) & !\div_cont|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(8),
	datad => VCC,
	cin => \div_cont|Add0~15\,
	combout => \div_cont|Add0~16_combout\,
	cout => \div_cont|Add0~17\);

-- Location: FF_X30_Y6_N21
\div_cont|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(8));

-- Location: LCCOMB_X30_Y6_N22
\div_cont|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~18_combout\ = (\div_cont|cuenta\(9) & (!\div_cont|Add0~17\)) # (!\div_cont|cuenta\(9) & ((\div_cont|Add0~17\) # (GND)))
-- \div_cont|Add0~19\ = CARRY((!\div_cont|Add0~17\) # (!\div_cont|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(9),
	datad => VCC,
	cin => \div_cont|Add0~17\,
	combout => \div_cont|Add0~18_combout\,
	cout => \div_cont|Add0~19\);

-- Location: FF_X30_Y6_N23
\div_cont|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(9));

-- Location: LCCOMB_X30_Y6_N24
\div_cont|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~20_combout\ = (\div_cont|cuenta\(10) & (\div_cont|Add0~19\ $ (GND))) # (!\div_cont|cuenta\(10) & (!\div_cont|Add0~19\ & VCC))
-- \div_cont|Add0~21\ = CARRY((\div_cont|cuenta\(10) & !\div_cont|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(10),
	datad => VCC,
	cin => \div_cont|Add0~19\,
	combout => \div_cont|Add0~20_combout\,
	cout => \div_cont|Add0~21\);

-- Location: FF_X30_Y6_N25
\div_cont|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(10));

-- Location: LCCOMB_X30_Y6_N26
\div_cont|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~22_combout\ = (\div_cont|cuenta\(11) & (!\div_cont|Add0~21\)) # (!\div_cont|cuenta\(11) & ((\div_cont|Add0~21\) # (GND)))
-- \div_cont|Add0~23\ = CARRY((!\div_cont|Add0~21\) # (!\div_cont|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(11),
	datad => VCC,
	cin => \div_cont|Add0~21\,
	combout => \div_cont|Add0~22_combout\,
	cout => \div_cont|Add0~23\);

-- Location: LCCOMB_X30_Y6_N0
\div_cont|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~10_combout\ = (\div_cont|Add0~22_combout\ & !\div_cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_cont|Add0~22_combout\,
	datad => \div_cont|Equal0~8_combout\,
	combout => \div_cont|cuenta~10_combout\);

-- Location: FF_X30_Y6_N1
\div_cont|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(11));

-- Location: LCCOMB_X29_Y6_N30
\div_cont|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~5_combout\ = (!\div_cont|cuenta\(8) & (!\div_cont|cuenta\(9) & (\div_cont|cuenta\(11) & !\div_cont|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(8),
	datab => \div_cont|cuenta\(9),
	datac => \div_cont|cuenta\(11),
	datad => \div_cont|cuenta\(10),
	combout => \div_cont|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y6_N28
\div_cont|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~24_combout\ = (\div_cont|cuenta\(12) & (\div_cont|Add0~23\ $ (GND))) # (!\div_cont|cuenta\(12) & (!\div_cont|Add0~23\ & VCC))
-- \div_cont|Add0~25\ = CARRY((\div_cont|cuenta\(12) & !\div_cont|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(12),
	datad => VCC,
	cin => \div_cont|Add0~23\,
	combout => \div_cont|Add0~24_combout\,
	cout => \div_cont|Add0~25\);

-- Location: LCCOMB_X29_Y5_N0
\div_cont|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~9_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datad => \div_cont|Add0~24_combout\,
	combout => \div_cont|cuenta~9_combout\);

-- Location: FF_X29_Y5_N1
\div_cont|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(12));

-- Location: LCCOMB_X30_Y6_N30
\div_cont|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~26_combout\ = (\div_cont|cuenta\(13) & (!\div_cont|Add0~25\)) # (!\div_cont|cuenta\(13) & ((\div_cont|Add0~25\) # (GND)))
-- \div_cont|Add0~27\ = CARRY((!\div_cont|Add0~25\) # (!\div_cont|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(13),
	datad => VCC,
	cin => \div_cont|Add0~25\,
	combout => \div_cont|Add0~26_combout\,
	cout => \div_cont|Add0~27\);

-- Location: LCCOMB_X29_Y6_N12
\div_cont|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~8_combout\ = (\div_cont|Add0~26_combout\ & !\div_cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_cont|Add0~26_combout\,
	datad => \div_cont|Equal0~8_combout\,
	combout => \div_cont|cuenta~8_combout\);

-- Location: FF_X29_Y6_N13
\div_cont|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(13));

-- Location: LCCOMB_X30_Y5_N0
\div_cont|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~28_combout\ = (\div_cont|cuenta\(14) & (\div_cont|Add0~27\ $ (GND))) # (!\div_cont|cuenta\(14) & (!\div_cont|Add0~27\ & VCC))
-- \div_cont|Add0~29\ = CARRY((\div_cont|cuenta\(14) & !\div_cont|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(14),
	datad => VCC,
	cin => \div_cont|Add0~27\,
	combout => \div_cont|Add0~28_combout\,
	cout => \div_cont|Add0~29\);

-- Location: LCCOMB_X29_Y5_N26
\div_cont|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~7_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datac => \div_cont|Add0~28_combout\,
	combout => \div_cont|cuenta~7_combout\);

-- Location: FF_X29_Y5_N27
\div_cont|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(14));

-- Location: LCCOMB_X30_Y5_N2
\div_cont|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~30_combout\ = (\div_cont|cuenta\(15) & (!\div_cont|Add0~29\)) # (!\div_cont|cuenta\(15) & ((\div_cont|Add0~29\) # (GND)))
-- \div_cont|Add0~31\ = CARRY((!\div_cont|Add0~29\) # (!\div_cont|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(15),
	datad => VCC,
	cin => \div_cont|Add0~29\,
	combout => \div_cont|Add0~30_combout\,
	cout => \div_cont|Add0~31\);

-- Location: FF_X30_Y5_N3
\div_cont|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(15));

-- Location: LCCOMB_X30_Y5_N4
\div_cont|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~32_combout\ = (\div_cont|cuenta\(16) & (\div_cont|Add0~31\ $ (GND))) # (!\div_cont|cuenta\(16) & (!\div_cont|Add0~31\ & VCC))
-- \div_cont|Add0~33\ = CARRY((\div_cont|cuenta\(16) & !\div_cont|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(16),
	datad => VCC,
	cin => \div_cont|Add0~31\,
	combout => \div_cont|Add0~32_combout\,
	cout => \div_cont|Add0~33\);

-- Location: LCCOMB_X29_Y5_N18
\div_cont|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~6_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_cont|Equal0~8_combout\,
	datad => \div_cont|Add0~32_combout\,
	combout => \div_cont|cuenta~6_combout\);

-- Location: FF_X29_Y5_N19
\div_cont|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(16));

-- Location: LCCOMB_X30_Y5_N6
\div_cont|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~34_combout\ = (\div_cont|cuenta\(17) & (!\div_cont|Add0~33\)) # (!\div_cont|cuenta\(17) & ((\div_cont|Add0~33\) # (GND)))
-- \div_cont|Add0~35\ = CARRY((!\div_cont|Add0~33\) # (!\div_cont|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(17),
	datad => VCC,
	cin => \div_cont|Add0~33\,
	combout => \div_cont|Add0~34_combout\,
	cout => \div_cont|Add0~35\);

-- Location: FF_X30_Y5_N7
\div_cont|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(17));

-- Location: LCCOMB_X30_Y5_N8
\div_cont|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~36_combout\ = (\div_cont|cuenta\(18) & (\div_cont|Add0~35\ $ (GND))) # (!\div_cont|cuenta\(18) & (!\div_cont|Add0~35\ & VCC))
-- \div_cont|Add0~37\ = CARRY((\div_cont|cuenta\(18) & !\div_cont|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(18),
	datad => VCC,
	cin => \div_cont|Add0~35\,
	combout => \div_cont|Add0~36_combout\,
	cout => \div_cont|Add0~37\);

-- Location: LCCOMB_X30_Y5_N30
\div_cont|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~5_combout\ = (\div_cont|Add0~36_combout\ & !\div_cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_cont|Add0~36_combout\,
	datad => \div_cont|Equal0~8_combout\,
	combout => \div_cont|cuenta~5_combout\);

-- Location: FF_X30_Y5_N31
\div_cont|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(18));

-- Location: LCCOMB_X30_Y5_N10
\div_cont|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~38_combout\ = (\div_cont|cuenta\(19) & (!\div_cont|Add0~37\)) # (!\div_cont|cuenta\(19) & ((\div_cont|Add0~37\) # (GND)))
-- \div_cont|Add0~39\ = CARRY((!\div_cont|Add0~37\) # (!\div_cont|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(19),
	datad => VCC,
	cin => \div_cont|Add0~37\,
	combout => \div_cont|Add0~38_combout\,
	cout => \div_cont|Add0~39\);

-- Location: LCCOMB_X29_Y5_N8
\div_cont|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~4_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datac => \div_cont|Add0~38_combout\,
	combout => \div_cont|cuenta~4_combout\);

-- Location: FF_X29_Y5_N9
\div_cont|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(19));

-- Location: LCCOMB_X30_Y5_N12
\div_cont|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~40_combout\ = (\div_cont|cuenta\(20) & (\div_cont|Add0~39\ $ (GND))) # (!\div_cont|cuenta\(20) & (!\div_cont|Add0~39\ & VCC))
-- \div_cont|Add0~41\ = CARRY((\div_cont|cuenta\(20) & !\div_cont|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(20),
	datad => VCC,
	cin => \div_cont|Add0~39\,
	combout => \div_cont|Add0~40_combout\,
	cout => \div_cont|Add0~41\);

-- Location: LCCOMB_X29_Y5_N20
\div_cont|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~3_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datac => \div_cont|Add0~40_combout\,
	combout => \div_cont|cuenta~3_combout\);

-- Location: FF_X29_Y5_N21
\div_cont|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(20));

-- Location: LCCOMB_X30_Y5_N14
\div_cont|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~42_combout\ = (\div_cont|cuenta\(21) & (!\div_cont|Add0~41\)) # (!\div_cont|cuenta\(21) & ((\div_cont|Add0~41\) # (GND)))
-- \div_cont|Add0~43\ = CARRY((!\div_cont|Add0~41\) # (!\div_cont|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(21),
	datad => VCC,
	cin => \div_cont|Add0~41\,
	combout => \div_cont|Add0~42_combout\,
	cout => \div_cont|Add0~43\);

-- Location: LCCOMB_X29_Y5_N6
\div_cont|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~2_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datac => \div_cont|Add0~42_combout\,
	combout => \div_cont|cuenta~2_combout\);

-- Location: FF_X29_Y5_N7
\div_cont|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(21));

-- Location: LCCOMB_X30_Y5_N16
\div_cont|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~44_combout\ = (\div_cont|cuenta\(22) & (\div_cont|Add0~43\ $ (GND))) # (!\div_cont|cuenta\(22) & (!\div_cont|Add0~43\ & VCC))
-- \div_cont|Add0~45\ = CARRY((\div_cont|cuenta\(22) & !\div_cont|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(22),
	datad => VCC,
	cin => \div_cont|Add0~43\,
	combout => \div_cont|Add0~44_combout\,
	cout => \div_cont|Add0~45\);

-- Location: LCCOMB_X30_Y5_N28
\div_cont|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~1_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|Equal0~8_combout\,
	datad => \div_cont|Add0~44_combout\,
	combout => \div_cont|cuenta~1_combout\);

-- Location: FF_X30_Y5_N29
\div_cont|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(22));

-- Location: LCCOMB_X30_Y5_N18
\div_cont|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~46_combout\ = (\div_cont|cuenta\(23) & (!\div_cont|Add0~45\)) # (!\div_cont|cuenta\(23) & ((\div_cont|Add0~45\) # (GND)))
-- \div_cont|Add0~47\ = CARRY((!\div_cont|Add0~45\) # (!\div_cont|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(23),
	datad => VCC,
	cin => \div_cont|Add0~45\,
	combout => \div_cont|Add0~46_combout\,
	cout => \div_cont|Add0~47\);

-- Location: FF_X30_Y5_N19
\div_cont|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(23));

-- Location: LCCOMB_X30_Y5_N20
\div_cont|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~48_combout\ = (\div_cont|cuenta\(24) & (\div_cont|Add0~47\ $ (GND))) # (!\div_cont|cuenta\(24) & (!\div_cont|Add0~47\ & VCC))
-- \div_cont|Add0~49\ = CARRY((\div_cont|cuenta\(24) & !\div_cont|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(24),
	datad => VCC,
	cin => \div_cont|Add0~47\,
	combout => \div_cont|Add0~48_combout\,
	cout => \div_cont|Add0~49\);

-- Location: LCCOMB_X29_Y5_N22
\div_cont|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|cuenta~0_combout\ = (!\div_cont|Equal0~8_combout\ & \div_cont|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datac => \div_cont|Add0~48_combout\,
	combout => \div_cont|cuenta~0_combout\);

-- Location: FF_X29_Y5_N23
\div_cont|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(24));

-- Location: LCCOMB_X30_Y5_N22
\div_cont|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~50_combout\ = (\div_cont|cuenta\(25) & (!\div_cont|Add0~49\)) # (!\div_cont|cuenta\(25) & ((\div_cont|Add0~49\) # (GND)))
-- \div_cont|Add0~51\ = CARRY((!\div_cont|Add0~49\) # (!\div_cont|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(25),
	datad => VCC,
	cin => \div_cont|Add0~49\,
	combout => \div_cont|Add0~50_combout\,
	cout => \div_cont|Add0~51\);

-- Location: FF_X30_Y5_N23
\div_cont|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(25));

-- Location: LCCOMB_X30_Y5_N24
\div_cont|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~52_combout\ = (\div_cont|cuenta\(26) & (\div_cont|Add0~51\ $ (GND))) # (!\div_cont|cuenta\(26) & (!\div_cont|Add0~51\ & VCC))
-- \div_cont|Add0~53\ = CARRY((\div_cont|cuenta\(26) & !\div_cont|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|cuenta\(26),
	datad => VCC,
	cin => \div_cont|Add0~51\,
	combout => \div_cont|Add0~52_combout\,
	cout => \div_cont|Add0~53\);

-- Location: FF_X30_Y5_N25
\div_cont|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(26));

-- Location: LCCOMB_X30_Y5_N26
\div_cont|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Add0~54_combout\ = \div_cont|cuenta\(27) $ (\div_cont|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(27),
	cin => \div_cont|Add0~53\,
	combout => \div_cont|Add0~54_combout\);

-- Location: FF_X30_Y5_N27
\div_cont|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|cuenta\(27));

-- Location: LCCOMB_X29_Y5_N12
\div_cont|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~0_combout\ = (\div_cont|cuenta\(24) & (!\div_cont|cuenta\(27) & (!\div_cont|cuenta\(26) & !\div_cont|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(24),
	datab => \div_cont|cuenta\(27),
	datac => \div_cont|cuenta\(26),
	datad => \div_cont|cuenta\(25),
	combout => \div_cont|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y5_N28
\div_cont|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~2_combout\ = (\div_cont|cuenta\(18) & (\div_cont|cuenta\(16) & (\div_cont|cuenta\(19) & !\div_cont|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(18),
	datab => \div_cont|cuenta\(16),
	datac => \div_cont|cuenta\(19),
	datad => \div_cont|cuenta\(17),
	combout => \div_cont|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y5_N30
\div_cont|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~1_combout\ = (\div_cont|cuenta\(21) & (\div_cont|cuenta\(20) & (!\div_cont|cuenta\(23) & \div_cont|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(21),
	datab => \div_cont|cuenta\(20),
	datac => \div_cont|cuenta\(23),
	datad => \div_cont|cuenta\(22),
	combout => \div_cont|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y5_N10
\div_cont|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~3_combout\ = (\div_cont|cuenta\(13) & (\div_cont|cuenta\(12) & (\div_cont|cuenta\(14) & !\div_cont|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(13),
	datab => \div_cont|cuenta\(12),
	datac => \div_cont|cuenta\(14),
	datad => \div_cont|cuenta\(15),
	combout => \div_cont|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y5_N24
\div_cont|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~4_combout\ = (\div_cont|Equal0~0_combout\ & (\div_cont|Equal0~2_combout\ & (\div_cont|Equal0~1_combout\ & \div_cont|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|Equal0~0_combout\,
	datab => \div_cont|Equal0~2_combout\,
	datac => \div_cont|Equal0~1_combout\,
	datad => \div_cont|Equal0~3_combout\,
	combout => \div_cont|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y6_N26
\div_cont|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~7_combout\ = (!\div_cont|cuenta\(1) & (!\div_cont|cuenta\(3) & (!\div_cont|cuenta\(2) & \div_cont|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(1),
	datab => \div_cont|cuenta\(3),
	datac => \div_cont|cuenta\(2),
	datad => \div_cont|cuenta\(0),
	combout => \div_cont|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y6_N4
\div_cont|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~6_combout\ = (\div_cont|cuenta\(6) & (!\div_cont|cuenta\(5) & (!\div_cont|cuenta\(4) & !\div_cont|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|cuenta\(6),
	datab => \div_cont|cuenta\(5),
	datac => \div_cont|cuenta\(4),
	datad => \div_cont|cuenta\(7),
	combout => \div_cont|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y5_N14
\div_cont|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|Equal0~8_combout\ = (\div_cont|Equal0~5_combout\ & (\div_cont|Equal0~4_combout\ & (\div_cont|Equal0~7_combout\ & \div_cont|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_cont|Equal0~5_combout\,
	datab => \div_cont|Equal0~4_combout\,
	datac => \div_cont|Equal0~7_combout\,
	datad => \div_cont|Equal0~6_combout\,
	combout => \div_cont|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y5_N16
\div_cont|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_cont|salida~0_combout\ = \div_cont|Equal0~8_combout\ $ (\div_cont|salida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_cont|Equal0~8_combout\,
	datac => \div_cont|salida~q\,
	combout => \div_cont|salida~0_combout\);

-- Location: FF_X29_Y5_N17
\div_cont|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cont|salida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cont|salida~q\);

-- Location: IOIBUF_X34_Y12_N8
\btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\lluvia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lluvia,
	o => \lluvia~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\frio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_frio,
	o => \frio~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\calor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_calor,
	o => \calor~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\PIR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PIR,
	o => \PIR~input_o\);

ww_puerta <= \puerta~output_o\;

ww_comedero <= \comedero~output_o\;

ww_alarma <= \alarma~output_o\;

ww_led <= \led~output_o\;

ww_salida_ff(0) <= \salida_ff[0]~output_o\;

ww_salida_ff(1) <= \salida_ff[1]~output_o\;
END structure;


