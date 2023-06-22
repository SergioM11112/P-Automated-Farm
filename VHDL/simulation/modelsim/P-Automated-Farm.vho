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

-- DATE "06/21/2023 22:49:21"

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
	alarma : OUT std_logic
	);
END main;

-- Design Ports Information
-- lluvia	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- frio	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIR	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comedero	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- calor	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \div_servo|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f_calor|f_control~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div_btn|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lluvia~input_o\ : std_logic;
SIGNAL \frio~input_o\ : std_logic;
SIGNAL \PIR~input_o\ : std_logic;
SIGNAL \puerta~output_o\ : std_logic;
SIGNAL \comedero~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_servo|Add0~0_combout\ : std_logic;
SIGNAL \div_servo|cuenta[0]~6_combout\ : std_logic;
SIGNAL \div_servo|Add0~1\ : std_logic;
SIGNAL \div_servo|Add0~2_combout\ : std_logic;
SIGNAL \div_servo|Add0~3\ : std_logic;
SIGNAL \div_servo|Add0~4_combout\ : std_logic;
SIGNAL \div_servo|cuenta~5_combout\ : std_logic;
SIGNAL \div_servo|Add0~5\ : std_logic;
SIGNAL \div_servo|Add0~6_combout\ : std_logic;
SIGNAL \div_servo|Add0~7\ : std_logic;
SIGNAL \div_servo|Add0~8_combout\ : std_logic;
SIGNAL \div_servo|cuenta~4_combout\ : std_logic;
SIGNAL \div_servo|Add0~9\ : std_logic;
SIGNAL \div_servo|Add0~10_combout\ : std_logic;
SIGNAL \div_servo|Add0~11\ : std_logic;
SIGNAL \div_servo|Add0~12_combout\ : std_logic;
SIGNAL \div_servo|cuenta~3_combout\ : std_logic;
SIGNAL \div_servo|Add0~13\ : std_logic;
SIGNAL \div_servo|Add0~14_combout\ : std_logic;
SIGNAL \div_servo|cuenta~2_combout\ : std_logic;
SIGNAL \div_servo|Add0~15\ : std_logic;
SIGNAL \div_servo|Add0~16_combout\ : std_logic;
SIGNAL \div_servo|Add0~17\ : std_logic;
SIGNAL \div_servo|Add0~18_combout\ : std_logic;
SIGNAL \div_servo|Equal0~6_combout\ : std_logic;
SIGNAL \div_servo|Add0~19\ : std_logic;
SIGNAL \div_servo|Add0~20_combout\ : std_logic;
SIGNAL \div_servo|Add0~21\ : std_logic;
SIGNAL \div_servo|Add0~22_combout\ : std_logic;
SIGNAL \div_servo|Add0~23\ : std_logic;
SIGNAL \div_servo|Add0~24_combout\ : std_logic;
SIGNAL \div_servo|cuenta~1_combout\ : std_logic;
SIGNAL \div_servo|Add0~25\ : std_logic;
SIGNAL \div_servo|Add0~26_combout\ : std_logic;
SIGNAL \div_servo|cuenta~0_combout\ : std_logic;
SIGNAL \div_servo|Equal0~5_combout\ : std_logic;
SIGNAL \div_servo|Equal0~7_combout\ : std_logic;
SIGNAL \div_servo|Add0~27\ : std_logic;
SIGNAL \div_servo|Add0~28_combout\ : std_logic;
SIGNAL \div_servo|Add0~29\ : std_logic;
SIGNAL \div_servo|Add0~30_combout\ : std_logic;
SIGNAL \div_servo|Add0~31\ : std_logic;
SIGNAL \div_servo|Add0~32_combout\ : std_logic;
SIGNAL \div_servo|Add0~33\ : std_logic;
SIGNAL \div_servo|Add0~34_combout\ : std_logic;
SIGNAL \div_servo|Add0~35\ : std_logic;
SIGNAL \div_servo|Add0~36_combout\ : std_logic;
SIGNAL \div_servo|Add0~37\ : std_logic;
SIGNAL \div_servo|Add0~38_combout\ : std_logic;
SIGNAL \div_servo|Add0~39\ : std_logic;
SIGNAL \div_servo|Add0~40_combout\ : std_logic;
SIGNAL \div_servo|Add0~41\ : std_logic;
SIGNAL \div_servo|Add0~42_combout\ : std_logic;
SIGNAL \div_servo|Add0~43\ : std_logic;
SIGNAL \div_servo|Add0~44_combout\ : std_logic;
SIGNAL \div_servo|Add0~45\ : std_logic;
SIGNAL \div_servo|Add0~46_combout\ : std_logic;
SIGNAL \div_servo|Add0~47\ : std_logic;
SIGNAL \div_servo|Add0~48_combout\ : std_logic;
SIGNAL \div_servo|Add0~49\ : std_logic;
SIGNAL \div_servo|Add0~50_combout\ : std_logic;
SIGNAL \div_servo|Equal0~1_combout\ : std_logic;
SIGNAL \div_servo|Add0~51\ : std_logic;
SIGNAL \div_servo|Add0~52_combout\ : std_logic;
SIGNAL \div_servo|Add0~53\ : std_logic;
SIGNAL \div_servo|Add0~54_combout\ : std_logic;
SIGNAL \div_servo|Equal0~0_combout\ : std_logic;
SIGNAL \div_servo|Equal0~2_combout\ : std_logic;
SIGNAL \div_servo|Equal0~3_combout\ : std_logic;
SIGNAL \div_servo|Equal0~4_combout\ : std_logic;
SIGNAL \div_servo|Equal0~8_combout\ : std_logic;
SIGNAL \div_servo|salida~0_combout\ : std_logic;
SIGNAL \div_servo|salida~feeder_combout\ : std_logic;
SIGNAL \div_servo|salida~q\ : std_logic;
SIGNAL \div_servo|salida~clkctrl_outclk\ : std_logic;
SIGNAL \sServo1|cont[0]~12_combout\ : std_logic;
SIGNAL \sServo1|cont[1]~4_combout\ : std_logic;
SIGNAL \sServo1|cont[1]~5\ : std_logic;
SIGNAL \sServo1|cont[2]~6_combout\ : std_logic;
SIGNAL \sServo1|cont[2]~7\ : std_logic;
SIGNAL \sServo1|cont[3]~8_combout\ : std_logic;
SIGNAL \sServo1|cont[3]~9\ : std_logic;
SIGNAL \sServo1|cont[4]~10_combout\ : std_logic;
SIGNAL \sServo2|LessThan0~0_combout\ : std_logic;
SIGNAL \sServo2|Y~q\ : std_logic;
SIGNAL \div_1|Add0~1_cout\ : std_logic;
SIGNAL \div_1|Add0~2_combout\ : std_logic;
SIGNAL \div_1|Add0~3\ : std_logic;
SIGNAL \div_1|Add0~4_combout\ : std_logic;
SIGNAL \div_1|Add0~5\ : std_logic;
SIGNAL \div_1|Add0~6_combout\ : std_logic;
SIGNAL \div_1|Add0~7\ : std_logic;
SIGNAL \div_1|Add0~8_combout\ : std_logic;
SIGNAL \div_1|cuenta~11_combout\ : std_logic;
SIGNAL \div_1|Add0~9\ : std_logic;
SIGNAL \div_1|Add0~10_combout\ : std_logic;
SIGNAL \div_1|Add0~11\ : std_logic;
SIGNAL \div_1|Add0~12_combout\ : std_logic;
SIGNAL \div_1|Add0~13\ : std_logic;
SIGNAL \div_1|Add0~14_combout\ : std_logic;
SIGNAL \div_1|Add0~15\ : std_logic;
SIGNAL \div_1|Add0~16_combout\ : std_logic;
SIGNAL \div_1|Add0~17\ : std_logic;
SIGNAL \div_1|Add0~18_combout\ : std_logic;
SIGNAL \div_1|cuenta~10_combout\ : std_logic;
SIGNAL \div_1|Add0~19\ : std_logic;
SIGNAL \div_1|Add0~20_combout\ : std_logic;
SIGNAL \div_1|cuenta~9_combout\ : std_logic;
SIGNAL \div_1|Equal0~6_combout\ : std_logic;
SIGNAL \div_1|Add0~21\ : std_logic;
SIGNAL \div_1|Add0~22_combout\ : std_logic;
SIGNAL \div_1|cuenta~8_combout\ : std_logic;
SIGNAL \div_1|Add0~23\ : std_logic;
SIGNAL \div_1|Add0~24_combout\ : std_logic;
SIGNAL \div_1|cuenta~7_combout\ : std_logic;
SIGNAL \div_1|Add0~25\ : std_logic;
SIGNAL \div_1|Add0~26_combout\ : std_logic;
SIGNAL \div_1|Add0~27\ : std_logic;
SIGNAL \div_1|Add0~28_combout\ : std_logic;
SIGNAL \div_1|cuenta~6_combout\ : std_logic;
SIGNAL \div_1|Equal0~5_combout\ : std_logic;
SIGNAL \div_1|Equal0~7_combout\ : std_logic;
SIGNAL \div_1|Add0~29\ : std_logic;
SIGNAL \div_1|Add0~30_combout\ : std_logic;
SIGNAL \div_1|Add0~31\ : std_logic;
SIGNAL \div_1|Add0~32_combout\ : std_logic;
SIGNAL \div_1|cuenta~5_combout\ : std_logic;
SIGNAL \div_1|Add0~33\ : std_logic;
SIGNAL \div_1|Add0~34_combout\ : std_logic;
SIGNAL \div_1|cuenta~4_combout\ : std_logic;
SIGNAL \div_1|Add0~35\ : std_logic;
SIGNAL \div_1|Add0~36_combout\ : std_logic;
SIGNAL \div_1|cuenta~3_combout\ : std_logic;
SIGNAL \div_1|Add0~37\ : std_logic;
SIGNAL \div_1|Add0~38_combout\ : std_logic;
SIGNAL \div_1|cuenta~2_combout\ : std_logic;
SIGNAL \div_1|Add0~39\ : std_logic;
SIGNAL \div_1|Add0~40_combout\ : std_logic;
SIGNAL \div_1|cuenta~1_combout\ : std_logic;
SIGNAL \div_1|Add0~41\ : std_logic;
SIGNAL \div_1|Add0~42_combout\ : std_logic;
SIGNAL \div_1|Add0~43\ : std_logic;
SIGNAL \div_1|Add0~44_combout\ : std_logic;
SIGNAL \div_1|cuenta~0_combout\ : std_logic;
SIGNAL \div_1|Equal0~2_combout\ : std_logic;
SIGNAL \div_1|Equal0~3_combout\ : std_logic;
SIGNAL \div_1|Equal0~0_combout\ : std_logic;
SIGNAL \div_1|Add0~45\ : std_logic;
SIGNAL \div_1|Add0~46_combout\ : std_logic;
SIGNAL \div_1|Add0~47\ : std_logic;
SIGNAL \div_1|Add0~48_combout\ : std_logic;
SIGNAL \div_1|Add0~49\ : std_logic;
SIGNAL \div_1|Add0~50_combout\ : std_logic;
SIGNAL \div_1|Add0~51\ : std_logic;
SIGNAL \div_1|Add0~52_combout\ : std_logic;
SIGNAL \div_1|Equal0~1_combout\ : std_logic;
SIGNAL \div_1|Equal0~4_combout\ : std_logic;
SIGNAL \div_1|Equal0~8_combout\ : std_logic;
SIGNAL \div_1|salida~0_combout\ : std_logic;
SIGNAL \div_1|salida~q\ : std_logic;
SIGNAL \div_btn|Add0~1_cout\ : std_logic;
SIGNAL \div_btn|Add0~3_cout\ : std_logic;
SIGNAL \div_btn|Add0~5_cout\ : std_logic;
SIGNAL \div_btn|Add0~6_combout\ : std_logic;
SIGNAL \div_btn|cuenta~7_combout\ : std_logic;
SIGNAL \div_btn|Add0~7\ : std_logic;
SIGNAL \div_btn|Add0~8_combout\ : std_logic;
SIGNAL \div_btn|Add0~9\ : std_logic;
SIGNAL \div_btn|Add0~10_combout\ : std_logic;
SIGNAL \div_btn|cuenta~6_combout\ : std_logic;
SIGNAL \div_btn|Add0~11\ : std_logic;
SIGNAL \div_btn|Add0~12_combout\ : std_logic;
SIGNAL \div_btn|cuenta~5_combout\ : std_logic;
SIGNAL \div_btn|Equal0~6_combout\ : std_logic;
SIGNAL \div_btn|Add0~13\ : std_logic;
SIGNAL \div_btn|Add0~14_combout\ : std_logic;
SIGNAL \div_btn|Add0~15\ : std_logic;
SIGNAL \div_btn|Add0~16_combout\ : std_logic;
SIGNAL \div_btn|cuenta~4_combout\ : std_logic;
SIGNAL \div_btn|Add0~17\ : std_logic;
SIGNAL \div_btn|Add0~18_combout\ : std_logic;
SIGNAL \div_btn|Add0~19\ : std_logic;
SIGNAL \div_btn|Add0~20_combout\ : std_logic;
SIGNAL \div_btn|Add0~21\ : std_logic;
SIGNAL \div_btn|Add0~22_combout\ : std_logic;
SIGNAL \div_btn|cuenta~3_combout\ : std_logic;
SIGNAL \div_btn|Add0~23\ : std_logic;
SIGNAL \div_btn|Add0~24_combout\ : std_logic;
SIGNAL \div_btn|Add0~25\ : std_logic;
SIGNAL \div_btn|Add0~26_combout\ : std_logic;
SIGNAL \div_btn|Add0~27\ : std_logic;
SIGNAL \div_btn|Add0~28_combout\ : std_logic;
SIGNAL \div_btn|Equal0~4_combout\ : std_logic;
SIGNAL \div_btn|Equal0~5_combout\ : std_logic;
SIGNAL \div_btn|Add0~29\ : std_logic;
SIGNAL \div_btn|Add0~30_combout\ : std_logic;
SIGNAL \div_btn|cuenta~2_combout\ : std_logic;
SIGNAL \div_btn|Add0~31\ : std_logic;
SIGNAL \div_btn|Add0~32_combout\ : std_logic;
SIGNAL \div_btn|cuenta~1_combout\ : std_logic;
SIGNAL \div_btn|Add0~33\ : std_logic;
SIGNAL \div_btn|Add0~34_combout\ : std_logic;
SIGNAL \div_btn|Add0~35\ : std_logic;
SIGNAL \div_btn|Add0~36_combout\ : std_logic;
SIGNAL \div_btn|Equal0~2_combout\ : std_logic;
SIGNAL \div_btn|Add0~37\ : std_logic;
SIGNAL \div_btn|Add0~38_combout\ : std_logic;
SIGNAL \div_btn|cuenta~0_combout\ : std_logic;
SIGNAL \div_btn|Add0~39\ : std_logic;
SIGNAL \div_btn|Add0~40_combout\ : std_logic;
SIGNAL \div_btn|Add0~41\ : std_logic;
SIGNAL \div_btn|Add0~42_combout\ : std_logic;
SIGNAL \div_btn|Add0~43\ : std_logic;
SIGNAL \div_btn|Add0~44_combout\ : std_logic;
SIGNAL \div_btn|Add0~45\ : std_logic;
SIGNAL \div_btn|Add0~46_combout\ : std_logic;
SIGNAL \div_btn|Add0~47\ : std_logic;
SIGNAL \div_btn|Add0~48_combout\ : std_logic;
SIGNAL \div_btn|Add0~49\ : std_logic;
SIGNAL \div_btn|Add0~50_combout\ : std_logic;
SIGNAL \div_btn|Add0~51\ : std_logic;
SIGNAL \div_btn|Add0~52_combout\ : std_logic;
SIGNAL \div_btn|Equal0~0_combout\ : std_logic;
SIGNAL \div_btn|Equal0~1_combout\ : std_logic;
SIGNAL \div_btn|Equal0~3_combout\ : std_logic;
SIGNAL \div_btn|Equal0~7_combout\ : std_logic;
SIGNAL \div_btn|salida~0_combout\ : std_logic;
SIGNAL \div_btn|salida~feeder_combout\ : std_logic;
SIGNAL \div_btn|salida~q\ : std_logic;
SIGNAL \div_btn|salida~clkctrl_outclk\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \btn_c|regis[0]~feeder_combout\ : std_logic;
SIGNAL \btn_c|regis[1]~feeder_combout\ : std_logic;
SIGNAL \btn_c|regis[2]~feeder_combout\ : std_logic;
SIGNAL \btn_c|regis[3]~feeder_combout\ : std_logic;
SIGNAL \btn_c|Equal0~0_combout\ : std_logic;
SIGNAL \btn_c|bto~q\ : std_logic;
SIGNAL \f_calor|f_control~combout\ : std_logic;
SIGNAL \f_calor|f_control~clkctrl_outclk\ : std_logic;
SIGNAL \calor~input_o\ : std_logic;
SIGNAL \Dc[1]~0_combout\ : std_logic;
SIGNAL \FQ1|qout~q\ : std_logic;
SIGNAL \FQ0|qout~q\ : std_logic;
SIGNAL \sServo1|LessThan0~0_combout\ : std_logic;
SIGNAL \sServo1|Y~q\ : std_logic;
SIGNAL \puerta~0_combout\ : std_logic;
SIGNAL \div_btn|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \div_1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \div_servo|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \sServo1|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL Dc : std_logic_vector(1 DOWNTO 0);
SIGNAL \btn_c|regis\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_calor~input_o\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\div_servo|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div_servo|salida~q\);

\f_calor|f_control~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f_calor|f_control~combout\);

\div_btn|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div_btn|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_calor~input_o\ <= NOT \calor~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\puerta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puerta~0_combout\,
	devoe => ww_devoe,
	o => \puerta~output_o\);

-- Location: IOOBUF_X0_Y6_N16
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
	i => \ALT_INV_calor~input_o\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

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

-- Location: LCCOMB_X29_Y10_N4
\div_servo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~0_combout\ = \div_servo|cuenta\(0) $ (GND)
-- \div_servo|Add0~1\ = CARRY(!\div_servo|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(0),
	datad => VCC,
	combout => \div_servo|Add0~0_combout\,
	cout => \div_servo|Add0~1\);

-- Location: LCCOMB_X29_Y10_N0
\div_servo|cuenta[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta[0]~6_combout\ = !\div_servo|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_servo|Add0~0_combout\,
	combout => \div_servo|cuenta[0]~6_combout\);

-- Location: FF_X29_Y10_N1
\div_servo|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(0));

-- Location: LCCOMB_X29_Y10_N6
\div_servo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~2_combout\ = (\div_servo|cuenta\(1) & (!\div_servo|Add0~1\)) # (!\div_servo|cuenta\(1) & ((\div_servo|Add0~1\) # (GND)))
-- \div_servo|Add0~3\ = CARRY((!\div_servo|Add0~1\) # (!\div_servo|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(1),
	datad => VCC,
	cin => \div_servo|Add0~1\,
	combout => \div_servo|Add0~2_combout\,
	cout => \div_servo|Add0~3\);

-- Location: FF_X29_Y10_N7
\div_servo|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(1));

-- Location: LCCOMB_X29_Y10_N8
\div_servo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~4_combout\ = (\div_servo|cuenta\(2) & (\div_servo|Add0~3\ $ (GND))) # (!\div_servo|cuenta\(2) & (!\div_servo|Add0~3\ & VCC))
-- \div_servo|Add0~5\ = CARRY((\div_servo|cuenta\(2) & !\div_servo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(2),
	datad => VCC,
	cin => \div_servo|Add0~3\,
	combout => \div_servo|Add0~4_combout\,
	cout => \div_servo|Add0~5\);

-- Location: LCCOMB_X30_Y10_N20
\div_servo|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta~5_combout\ = (\div_servo|Add0~4_combout\ & !\div_servo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|Add0~4_combout\,
	datad => \div_servo|Equal0~8_combout\,
	combout => \div_servo|cuenta~5_combout\);

-- Location: FF_X30_Y10_N21
\div_servo|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(2));

-- Location: LCCOMB_X29_Y10_N10
\div_servo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~6_combout\ = (\div_servo|cuenta\(3) & (!\div_servo|Add0~5\)) # (!\div_servo|cuenta\(3) & ((\div_servo|Add0~5\) # (GND)))
-- \div_servo|Add0~7\ = CARRY((!\div_servo|Add0~5\) # (!\div_servo|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(3),
	datad => VCC,
	cin => \div_servo|Add0~5\,
	combout => \div_servo|Add0~6_combout\,
	cout => \div_servo|Add0~7\);

-- Location: FF_X29_Y10_N11
\div_servo|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(3));

-- Location: LCCOMB_X29_Y10_N12
\div_servo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~8_combout\ = (\div_servo|cuenta\(4) & (\div_servo|Add0~7\ $ (GND))) # (!\div_servo|cuenta\(4) & (!\div_servo|Add0~7\ & VCC))
-- \div_servo|Add0~9\ = CARRY((\div_servo|cuenta\(4) & !\div_servo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(4),
	datad => VCC,
	cin => \div_servo|Add0~7\,
	combout => \div_servo|Add0~8_combout\,
	cout => \div_servo|Add0~9\);

-- Location: LCCOMB_X30_Y10_N30
\div_servo|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta~4_combout\ = (\div_servo|Add0~8_combout\ & !\div_servo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_servo|Add0~8_combout\,
	datad => \div_servo|Equal0~8_combout\,
	combout => \div_servo|cuenta~4_combout\);

-- Location: FF_X30_Y10_N31
\div_servo|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(4));

-- Location: LCCOMB_X29_Y10_N14
\div_servo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~10_combout\ = (\div_servo|cuenta\(5) & (!\div_servo|Add0~9\)) # (!\div_servo|cuenta\(5) & ((\div_servo|Add0~9\) # (GND)))
-- \div_servo|Add0~11\ = CARRY((!\div_servo|Add0~9\) # (!\div_servo|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(5),
	datad => VCC,
	cin => \div_servo|Add0~9\,
	combout => \div_servo|Add0~10_combout\,
	cout => \div_servo|Add0~11\);

-- Location: FF_X29_Y10_N15
\div_servo|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(5));

-- Location: LCCOMB_X29_Y10_N16
\div_servo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~12_combout\ = (\div_servo|cuenta\(6) & (\div_servo|Add0~11\ $ (GND))) # (!\div_servo|cuenta\(6) & (!\div_servo|Add0~11\ & VCC))
-- \div_servo|Add0~13\ = CARRY((\div_servo|cuenta\(6) & !\div_servo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(6),
	datad => VCC,
	cin => \div_servo|Add0~11\,
	combout => \div_servo|Add0~12_combout\,
	cout => \div_servo|Add0~13\);

-- Location: LCCOMB_X29_Y10_N2
\div_servo|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta~3_combout\ = (\div_servo|Add0~12_combout\ & !\div_servo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|Add0~12_combout\,
	datad => \div_servo|Equal0~8_combout\,
	combout => \div_servo|cuenta~3_combout\);

-- Location: FF_X29_Y10_N3
\div_servo|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(6));

-- Location: LCCOMB_X29_Y10_N18
\div_servo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~14_combout\ = (\div_servo|cuenta\(7) & (!\div_servo|Add0~13\)) # (!\div_servo|cuenta\(7) & ((\div_servo|Add0~13\) # (GND)))
-- \div_servo|Add0~15\ = CARRY((!\div_servo|Add0~13\) # (!\div_servo|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(7),
	datad => VCC,
	cin => \div_servo|Add0~13\,
	combout => \div_servo|Add0~14_combout\,
	cout => \div_servo|Add0~15\);

-- Location: LCCOMB_X30_Y10_N26
\div_servo|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta~2_combout\ = (\div_servo|Add0~14_combout\ & !\div_servo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|Add0~14_combout\,
	datad => \div_servo|Equal0~8_combout\,
	combout => \div_servo|cuenta~2_combout\);

-- Location: FF_X30_Y10_N27
\div_servo|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(7));

-- Location: LCCOMB_X29_Y10_N20
\div_servo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~16_combout\ = (\div_servo|cuenta\(8) & (\div_servo|Add0~15\ $ (GND))) # (!\div_servo|cuenta\(8) & (!\div_servo|Add0~15\ & VCC))
-- \div_servo|Add0~17\ = CARRY((\div_servo|cuenta\(8) & !\div_servo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(8),
	datad => VCC,
	cin => \div_servo|Add0~15\,
	combout => \div_servo|Add0~16_combout\,
	cout => \div_servo|Add0~17\);

-- Location: FF_X29_Y10_N21
\div_servo|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(8));

-- Location: LCCOMB_X29_Y10_N22
\div_servo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~18_combout\ = (\div_servo|cuenta\(9) & (!\div_servo|Add0~17\)) # (!\div_servo|cuenta\(9) & ((\div_servo|Add0~17\) # (GND)))
-- \div_servo|Add0~19\ = CARRY((!\div_servo|Add0~17\) # (!\div_servo|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(9),
	datad => VCC,
	cin => \div_servo|Add0~17\,
	combout => \div_servo|Add0~18_combout\,
	cout => \div_servo|Add0~19\);

-- Location: FF_X29_Y10_N23
\div_servo|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(9));

-- Location: LCCOMB_X30_Y10_N10
\div_servo|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~6_combout\ = (\div_servo|cuenta\(7) & (!\div_servo|cuenta\(9) & (\div_servo|cuenta\(6) & !\div_servo|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(7),
	datab => \div_servo|cuenta\(9),
	datac => \div_servo|cuenta\(6),
	datad => \div_servo|cuenta\(8),
	combout => \div_servo|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y10_N24
\div_servo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~20_combout\ = (\div_servo|cuenta\(10) & (\div_servo|Add0~19\ $ (GND))) # (!\div_servo|cuenta\(10) & (!\div_servo|Add0~19\ & VCC))
-- \div_servo|Add0~21\ = CARRY((\div_servo|cuenta\(10) & !\div_servo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(10),
	datad => VCC,
	cin => \div_servo|Add0~19\,
	combout => \div_servo|Add0~20_combout\,
	cout => \div_servo|Add0~21\);

-- Location: FF_X29_Y10_N25
\div_servo|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(10));

-- Location: LCCOMB_X29_Y10_N26
\div_servo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~22_combout\ = (\div_servo|cuenta\(11) & (!\div_servo|Add0~21\)) # (!\div_servo|cuenta\(11) & ((\div_servo|Add0~21\) # (GND)))
-- \div_servo|Add0~23\ = CARRY((!\div_servo|Add0~21\) # (!\div_servo|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(11),
	datad => VCC,
	cin => \div_servo|Add0~21\,
	combout => \div_servo|Add0~22_combout\,
	cout => \div_servo|Add0~23\);

-- Location: FF_X29_Y10_N27
\div_servo|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(11));

-- Location: LCCOMB_X29_Y10_N28
\div_servo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~24_combout\ = (\div_servo|cuenta\(12) & (\div_servo|Add0~23\ $ (GND))) # (!\div_servo|cuenta\(12) & (!\div_servo|Add0~23\ & VCC))
-- \div_servo|Add0~25\ = CARRY((\div_servo|cuenta\(12) & !\div_servo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(12),
	datad => VCC,
	cin => \div_servo|Add0~23\,
	combout => \div_servo|Add0~24_combout\,
	cout => \div_servo|Add0~25\);

-- Location: LCCOMB_X30_Y10_N22
\div_servo|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta~1_combout\ = (!\div_servo|Equal0~8_combout\ & \div_servo|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|Equal0~8_combout\,
	datad => \div_servo|Add0~24_combout\,
	combout => \div_servo|cuenta~1_combout\);

-- Location: FF_X30_Y10_N23
\div_servo|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(12));

-- Location: LCCOMB_X29_Y10_N30
\div_servo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~26_combout\ = (\div_servo|cuenta\(13) & (!\div_servo|Add0~25\)) # (!\div_servo|cuenta\(13) & ((\div_servo|Add0~25\) # (GND)))
-- \div_servo|Add0~27\ = CARRY((!\div_servo|Add0~25\) # (!\div_servo|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(13),
	datad => VCC,
	cin => \div_servo|Add0~25\,
	combout => \div_servo|Add0~26_combout\,
	cout => \div_servo|Add0~27\);

-- Location: LCCOMB_X30_Y10_N2
\div_servo|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|cuenta~0_combout\ = (\div_servo|Add0~26_combout\ & !\div_servo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_servo|Add0~26_combout\,
	datad => \div_servo|Equal0~8_combout\,
	combout => \div_servo|cuenta~0_combout\);

-- Location: FF_X30_Y10_N3
\div_servo|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(13));

-- Location: LCCOMB_X30_Y10_N16
\div_servo|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~5_combout\ = (\div_servo|cuenta\(12) & (\div_servo|cuenta\(13) & (!\div_servo|cuenta\(11) & !\div_servo|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(12),
	datab => \div_servo|cuenta\(13),
	datac => \div_servo|cuenta\(11),
	datad => \div_servo|cuenta\(10),
	combout => \div_servo|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y10_N8
\div_servo|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~7_combout\ = (!\div_servo|cuenta\(3) & (\div_servo|cuenta\(2) & (\div_servo|cuenta\(4) & !\div_servo|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(3),
	datab => \div_servo|cuenta\(2),
	datac => \div_servo|cuenta\(4),
	datad => \div_servo|cuenta\(5),
	combout => \div_servo|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y9_N0
\div_servo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~28_combout\ = (\div_servo|cuenta\(14) & (\div_servo|Add0~27\ $ (GND))) # (!\div_servo|cuenta\(14) & (!\div_servo|Add0~27\ & VCC))
-- \div_servo|Add0~29\ = CARRY((\div_servo|cuenta\(14) & !\div_servo|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(14),
	datad => VCC,
	cin => \div_servo|Add0~27\,
	combout => \div_servo|Add0~28_combout\,
	cout => \div_servo|Add0~29\);

-- Location: FF_X29_Y9_N1
\div_servo|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(14));

-- Location: LCCOMB_X29_Y9_N2
\div_servo|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~30_combout\ = (\div_servo|cuenta\(15) & (!\div_servo|Add0~29\)) # (!\div_servo|cuenta\(15) & ((\div_servo|Add0~29\) # (GND)))
-- \div_servo|Add0~31\ = CARRY((!\div_servo|Add0~29\) # (!\div_servo|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(15),
	datad => VCC,
	cin => \div_servo|Add0~29\,
	combout => \div_servo|Add0~30_combout\,
	cout => \div_servo|Add0~31\);

-- Location: FF_X29_Y9_N3
\div_servo|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(15));

-- Location: LCCOMB_X29_Y9_N4
\div_servo|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~32_combout\ = (\div_servo|cuenta\(16) & (\div_servo|Add0~31\ $ (GND))) # (!\div_servo|cuenta\(16) & (!\div_servo|Add0~31\ & VCC))
-- \div_servo|Add0~33\ = CARRY((\div_servo|cuenta\(16) & !\div_servo|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(16),
	datad => VCC,
	cin => \div_servo|Add0~31\,
	combout => \div_servo|Add0~32_combout\,
	cout => \div_servo|Add0~33\);

-- Location: FF_X29_Y9_N5
\div_servo|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(16));

-- Location: LCCOMB_X29_Y9_N6
\div_servo|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~34_combout\ = (\div_servo|cuenta\(17) & (!\div_servo|Add0~33\)) # (!\div_servo|cuenta\(17) & ((\div_servo|Add0~33\) # (GND)))
-- \div_servo|Add0~35\ = CARRY((!\div_servo|Add0~33\) # (!\div_servo|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(17),
	datad => VCC,
	cin => \div_servo|Add0~33\,
	combout => \div_servo|Add0~34_combout\,
	cout => \div_servo|Add0~35\);

-- Location: FF_X29_Y9_N7
\div_servo|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(17));

-- Location: LCCOMB_X29_Y9_N8
\div_servo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~36_combout\ = (\div_servo|cuenta\(18) & (\div_servo|Add0~35\ $ (GND))) # (!\div_servo|cuenta\(18) & (!\div_servo|Add0~35\ & VCC))
-- \div_servo|Add0~37\ = CARRY((\div_servo|cuenta\(18) & !\div_servo|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(18),
	datad => VCC,
	cin => \div_servo|Add0~35\,
	combout => \div_servo|Add0~36_combout\,
	cout => \div_servo|Add0~37\);

-- Location: FF_X29_Y9_N9
\div_servo|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(18));

-- Location: LCCOMB_X29_Y9_N10
\div_servo|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~38_combout\ = (\div_servo|cuenta\(19) & (!\div_servo|Add0~37\)) # (!\div_servo|cuenta\(19) & ((\div_servo|Add0~37\) # (GND)))
-- \div_servo|Add0~39\ = CARRY((!\div_servo|Add0~37\) # (!\div_servo|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(19),
	datad => VCC,
	cin => \div_servo|Add0~37\,
	combout => \div_servo|Add0~38_combout\,
	cout => \div_servo|Add0~39\);

-- Location: FF_X29_Y9_N11
\div_servo|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(19));

-- Location: LCCOMB_X29_Y9_N12
\div_servo|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~40_combout\ = (\div_servo|cuenta\(20) & (\div_servo|Add0~39\ $ (GND))) # (!\div_servo|cuenta\(20) & (!\div_servo|Add0~39\ & VCC))
-- \div_servo|Add0~41\ = CARRY((\div_servo|cuenta\(20) & !\div_servo|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(20),
	datad => VCC,
	cin => \div_servo|Add0~39\,
	combout => \div_servo|Add0~40_combout\,
	cout => \div_servo|Add0~41\);

-- Location: FF_X29_Y9_N13
\div_servo|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(20));

-- Location: LCCOMB_X29_Y9_N14
\div_servo|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~42_combout\ = (\div_servo|cuenta\(21) & (!\div_servo|Add0~41\)) # (!\div_servo|cuenta\(21) & ((\div_servo|Add0~41\) # (GND)))
-- \div_servo|Add0~43\ = CARRY((!\div_servo|Add0~41\) # (!\div_servo|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(21),
	datad => VCC,
	cin => \div_servo|Add0~41\,
	combout => \div_servo|Add0~42_combout\,
	cout => \div_servo|Add0~43\);

-- Location: FF_X29_Y9_N15
\div_servo|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(21));

-- Location: LCCOMB_X29_Y9_N16
\div_servo|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~44_combout\ = (\div_servo|cuenta\(22) & (\div_servo|Add0~43\ $ (GND))) # (!\div_servo|cuenta\(22) & (!\div_servo|Add0~43\ & VCC))
-- \div_servo|Add0~45\ = CARRY((\div_servo|cuenta\(22) & !\div_servo|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(22),
	datad => VCC,
	cin => \div_servo|Add0~43\,
	combout => \div_servo|Add0~44_combout\,
	cout => \div_servo|Add0~45\);

-- Location: FF_X29_Y9_N17
\div_servo|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(22));

-- Location: LCCOMB_X29_Y9_N18
\div_servo|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~46_combout\ = (\div_servo|cuenta\(23) & (!\div_servo|Add0~45\)) # (!\div_servo|cuenta\(23) & ((\div_servo|Add0~45\) # (GND)))
-- \div_servo|Add0~47\ = CARRY((!\div_servo|Add0~45\) # (!\div_servo|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(23),
	datad => VCC,
	cin => \div_servo|Add0~45\,
	combout => \div_servo|Add0~46_combout\,
	cout => \div_servo|Add0~47\);

-- Location: FF_X29_Y9_N19
\div_servo|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(23));

-- Location: LCCOMB_X29_Y9_N20
\div_servo|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~48_combout\ = (\div_servo|cuenta\(24) & (\div_servo|Add0~47\ $ (GND))) # (!\div_servo|cuenta\(24) & (!\div_servo|Add0~47\ & VCC))
-- \div_servo|Add0~49\ = CARRY((\div_servo|cuenta\(24) & !\div_servo|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(24),
	datad => VCC,
	cin => \div_servo|Add0~47\,
	combout => \div_servo|Add0~48_combout\,
	cout => \div_servo|Add0~49\);

-- Location: FF_X29_Y9_N21
\div_servo|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(24));

-- Location: LCCOMB_X29_Y9_N22
\div_servo|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~50_combout\ = (\div_servo|cuenta\(25) & (!\div_servo|Add0~49\)) # (!\div_servo|cuenta\(25) & ((\div_servo|Add0~49\) # (GND)))
-- \div_servo|Add0~51\ = CARRY((!\div_servo|Add0~49\) # (!\div_servo|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(25),
	datad => VCC,
	cin => \div_servo|Add0~49\,
	combout => \div_servo|Add0~50_combout\,
	cout => \div_servo|Add0~51\);

-- Location: FF_X29_Y9_N23
\div_servo|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(25));

-- Location: LCCOMB_X29_Y9_N28
\div_servo|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~1_combout\ = (!\div_servo|cuenta\(25) & (!\div_servo|cuenta\(23) & (!\div_servo|cuenta\(24) & !\div_servo|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(25),
	datab => \div_servo|cuenta\(23),
	datac => \div_servo|cuenta\(24),
	datad => \div_servo|cuenta\(22),
	combout => \div_servo|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y9_N24
\div_servo|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~52_combout\ = (\div_servo|cuenta\(26) & (\div_servo|Add0~51\ $ (GND))) # (!\div_servo|cuenta\(26) & (!\div_servo|Add0~51\ & VCC))
-- \div_servo|Add0~53\ = CARRY((\div_servo|cuenta\(26) & !\div_servo|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_servo|cuenta\(26),
	datad => VCC,
	cin => \div_servo|Add0~51\,
	combout => \div_servo|Add0~52_combout\,
	cout => \div_servo|Add0~53\);

-- Location: FF_X29_Y9_N25
\div_servo|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(26));

-- Location: LCCOMB_X29_Y9_N26
\div_servo|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Add0~54_combout\ = \div_servo|cuenta\(27) $ (\div_servo|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(27),
	cin => \div_servo|Add0~53\,
	combout => \div_servo|Add0~54_combout\);

-- Location: FF_X29_Y9_N27
\div_servo|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|cuenta\(27));

-- Location: LCCOMB_X30_Y10_N18
\div_servo|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~0_combout\ = (!\div_servo|cuenta\(26) & (!\div_servo|cuenta\(1) & (\div_servo|cuenta\(0) & !\div_servo|cuenta\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(26),
	datab => \div_servo|cuenta\(1),
	datac => \div_servo|cuenta\(0),
	datad => \div_servo|cuenta\(27),
	combout => \div_servo|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y9_N30
\div_servo|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~2_combout\ = (!\div_servo|cuenta\(19) & (!\div_servo|cuenta\(21) & (!\div_servo|cuenta\(18) & !\div_servo|cuenta\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(19),
	datab => \div_servo|cuenta\(21),
	datac => \div_servo|cuenta\(18),
	datad => \div_servo|cuenta\(20),
	combout => \div_servo|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y9_N0
\div_servo|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~3_combout\ = (!\div_servo|cuenta\(14) & (!\div_servo|cuenta\(17) & (!\div_servo|cuenta\(16) & !\div_servo|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(14),
	datab => \div_servo|cuenta\(17),
	datac => \div_servo|cuenta\(16),
	datad => \div_servo|cuenta\(15),
	combout => \div_servo|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y10_N24
\div_servo|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~4_combout\ = (\div_servo|Equal0~1_combout\ & (\div_servo|Equal0~0_combout\ & (\div_servo|Equal0~2_combout\ & \div_servo|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|Equal0~1_combout\,
	datab => \div_servo|Equal0~0_combout\,
	datac => \div_servo|Equal0~2_combout\,
	datad => \div_servo|Equal0~3_combout\,
	combout => \div_servo|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y10_N28
\div_servo|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|Equal0~8_combout\ = (\div_servo|Equal0~6_combout\ & (\div_servo|Equal0~5_combout\ & (\div_servo|Equal0~7_combout\ & \div_servo|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|Equal0~6_combout\,
	datab => \div_servo|Equal0~5_combout\,
	datac => \div_servo|Equal0~7_combout\,
	datad => \div_servo|Equal0~4_combout\,
	combout => \div_servo|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y10_N12
\div_servo|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|salida~0_combout\ = \div_servo|salida~q\ $ (\div_servo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_servo|salida~q\,
	datad => \div_servo|Equal0~8_combout\,
	combout => \div_servo|salida~0_combout\);

-- Location: LCCOMB_X30_Y10_N4
\div_servo|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_servo|salida~feeder_combout\ = \div_servo|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|salida~0_combout\,
	combout => \div_servo|salida~feeder_combout\);

-- Location: FF_X30_Y10_N5
\div_servo|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_servo|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_servo|salida~q\);

-- Location: CLKCTRL_G5
\div_servo|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div_servo|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div_servo|salida~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y10_N10
\sServo1|cont[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo1|cont[0]~12_combout\ = !\sServo1|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sServo1|cont\(0),
	combout => \sServo1|cont[0]~12_combout\);

-- Location: FF_X6_Y10_N11
\sServo1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo1|cont[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo1|cont\(0));

-- Location: LCCOMB_X6_Y10_N20
\sServo1|cont[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo1|cont[1]~4_combout\ = (\sServo1|cont\(0) & (\sServo1|cont\(1) & VCC)) # (!\sServo1|cont\(0) & (\sServo1|cont\(1) $ (VCC)))
-- \sServo1|cont[1]~5\ = CARRY((!\sServo1|cont\(0) & \sServo1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sServo1|cont\(0),
	datab => \sServo1|cont\(1),
	datad => VCC,
	combout => \sServo1|cont[1]~4_combout\,
	cout => \sServo1|cont[1]~5\);

-- Location: FF_X6_Y10_N21
\sServo1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo1|cont[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo1|cont\(1));

-- Location: LCCOMB_X6_Y10_N22
\sServo1|cont[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo1|cont[2]~6_combout\ = (\sServo1|cont\(2) & (!\sServo1|cont[1]~5\)) # (!\sServo1|cont\(2) & ((\sServo1|cont[1]~5\) # (GND)))
-- \sServo1|cont[2]~7\ = CARRY((!\sServo1|cont[1]~5\) # (!\sServo1|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sServo1|cont\(2),
	datad => VCC,
	cin => \sServo1|cont[1]~5\,
	combout => \sServo1|cont[2]~6_combout\,
	cout => \sServo1|cont[2]~7\);

-- Location: FF_X6_Y10_N23
\sServo1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo1|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo1|cont\(2));

-- Location: LCCOMB_X6_Y10_N24
\sServo1|cont[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo1|cont[3]~8_combout\ = (\sServo1|cont\(3) & (\sServo1|cont[2]~7\ $ (GND))) # (!\sServo1|cont\(3) & (!\sServo1|cont[2]~7\ & VCC))
-- \sServo1|cont[3]~9\ = CARRY((\sServo1|cont\(3) & !\sServo1|cont[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sServo1|cont\(3),
	datad => VCC,
	cin => \sServo1|cont[2]~7\,
	combout => \sServo1|cont[3]~8_combout\,
	cout => \sServo1|cont[3]~9\);

-- Location: FF_X6_Y10_N25
\sServo1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo1|cont[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo1|cont\(3));

-- Location: LCCOMB_X6_Y10_N26
\sServo1|cont[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo1|cont[4]~10_combout\ = \sServo1|cont\(4) $ (\sServo1|cont[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sServo1|cont\(4),
	cin => \sServo1|cont[3]~9\,
	combout => \sServo1|cont[4]~10_combout\);

-- Location: FF_X6_Y10_N27
\sServo1|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo1|cont[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo1|cont\(4));

-- Location: LCCOMB_X6_Y10_N12
\sServo2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo2|LessThan0~0_combout\ = (!\sServo1|cont\(4) & (!\sServo1|cont\(3) & ((!\sServo1|cont\(1)) # (!\sServo1|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sServo1|cont\(4),
	datab => \sServo1|cont\(2),
	datac => \sServo1|cont\(1),
	datad => \sServo1|cont\(3),
	combout => \sServo2|LessThan0~0_combout\);

-- Location: FF_X6_Y10_N13
\sServo2|Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo2|Y~q\);

-- Location: LCCOMB_X25_Y10_N6
\div_1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~1_cout\ = CARRY((\div_servo|cuenta\(1) & !\div_servo|cuenta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(1),
	datab => \div_servo|cuenta\(0),
	datad => VCC,
	cout => \div_1|Add0~1_cout\);

-- Location: LCCOMB_X25_Y10_N8
\div_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~2_combout\ = (\div_1|cuenta\(2) & (!\div_1|Add0~1_cout\)) # (!\div_1|cuenta\(2) & ((\div_1|Add0~1_cout\) # (GND)))
-- \div_1|Add0~3\ = CARRY((!\div_1|Add0~1_cout\) # (!\div_1|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(2),
	datad => VCC,
	cin => \div_1|Add0~1_cout\,
	combout => \div_1|Add0~2_combout\,
	cout => \div_1|Add0~3\);

-- Location: FF_X25_Y10_N9
\div_1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(2));

-- Location: LCCOMB_X25_Y10_N10
\div_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~4_combout\ = (\div_1|cuenta\(3) & (\div_1|Add0~3\ $ (GND))) # (!\div_1|cuenta\(3) & (!\div_1|Add0~3\ & VCC))
-- \div_1|Add0~5\ = CARRY((\div_1|cuenta\(3) & !\div_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(3),
	datad => VCC,
	cin => \div_1|Add0~3\,
	combout => \div_1|Add0~4_combout\,
	cout => \div_1|Add0~5\);

-- Location: FF_X25_Y10_N11
\div_1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(3));

-- Location: LCCOMB_X25_Y10_N12
\div_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~6_combout\ = (\div_1|cuenta\(4) & (!\div_1|Add0~5\)) # (!\div_1|cuenta\(4) & ((\div_1|Add0~5\) # (GND)))
-- \div_1|Add0~7\ = CARRY((!\div_1|Add0~5\) # (!\div_1|cuenta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(4),
	datad => VCC,
	cin => \div_1|Add0~5\,
	combout => \div_1|Add0~6_combout\,
	cout => \div_1|Add0~7\);

-- Location: FF_X25_Y10_N13
\div_1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(4));

-- Location: LCCOMB_X25_Y10_N14
\div_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~8_combout\ = (\div_1|cuenta\(5) & (\div_1|Add0~7\ $ (GND))) # (!\div_1|cuenta\(5) & (!\div_1|Add0~7\ & VCC))
-- \div_1|Add0~9\ = CARRY((\div_1|cuenta\(5) & !\div_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(5),
	datad => VCC,
	cin => \div_1|Add0~7\,
	combout => \div_1|Add0~8_combout\,
	cout => \div_1|Add0~9\);

-- Location: LCCOMB_X25_Y10_N0
\div_1|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~11_combout\ = (\div_1|Add0~8_combout\ & !\div_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_1|Add0~8_combout\,
	datac => \div_1|Equal0~8_combout\,
	combout => \div_1|cuenta~11_combout\);

-- Location: FF_X25_Y10_N1
\div_1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(5));

-- Location: LCCOMB_X25_Y10_N16
\div_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~10_combout\ = (\div_1|cuenta\(6) & (!\div_1|Add0~9\)) # (!\div_1|cuenta\(6) & ((\div_1|Add0~9\) # (GND)))
-- \div_1|Add0~11\ = CARRY((!\div_1|Add0~9\) # (!\div_1|cuenta\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(6),
	datad => VCC,
	cin => \div_1|Add0~9\,
	combout => \div_1|Add0~10_combout\,
	cout => \div_1|Add0~11\);

-- Location: FF_X25_Y10_N17
\div_1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(6));

-- Location: LCCOMB_X25_Y10_N18
\div_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~12_combout\ = (\div_1|cuenta\(7) & (\div_1|Add0~11\ $ (GND))) # (!\div_1|cuenta\(7) & (!\div_1|Add0~11\ & VCC))
-- \div_1|Add0~13\ = CARRY((\div_1|cuenta\(7) & !\div_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(7),
	datad => VCC,
	cin => \div_1|Add0~11\,
	combout => \div_1|Add0~12_combout\,
	cout => \div_1|Add0~13\);

-- Location: FF_X25_Y10_N19
\div_1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(7));

-- Location: LCCOMB_X25_Y10_N20
\div_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~14_combout\ = (\div_1|cuenta\(8) & (!\div_1|Add0~13\)) # (!\div_1|cuenta\(8) & ((\div_1|Add0~13\) # (GND)))
-- \div_1|Add0~15\ = CARRY((!\div_1|Add0~13\) # (!\div_1|cuenta\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(8),
	datad => VCC,
	cin => \div_1|Add0~13\,
	combout => \div_1|Add0~14_combout\,
	cout => \div_1|Add0~15\);

-- Location: FF_X25_Y10_N21
\div_1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(8));

-- Location: LCCOMB_X25_Y10_N22
\div_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~16_combout\ = (\div_1|cuenta\(9) & (\div_1|Add0~15\ $ (GND))) # (!\div_1|cuenta\(9) & (!\div_1|Add0~15\ & VCC))
-- \div_1|Add0~17\ = CARRY((\div_1|cuenta\(9) & !\div_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(9),
	datad => VCC,
	cin => \div_1|Add0~15\,
	combout => \div_1|Add0~16_combout\,
	cout => \div_1|Add0~17\);

-- Location: FF_X25_Y10_N23
\div_1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(9));

-- Location: LCCOMB_X25_Y10_N24
\div_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~18_combout\ = (\div_1|cuenta\(10) & (!\div_1|Add0~17\)) # (!\div_1|cuenta\(10) & ((\div_1|Add0~17\) # (GND)))
-- \div_1|Add0~19\ = CARRY((!\div_1|Add0~17\) # (!\div_1|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(10),
	datad => VCC,
	cin => \div_1|Add0~17\,
	combout => \div_1|Add0~18_combout\,
	cout => \div_1|Add0~19\);

-- Location: LCCOMB_X26_Y9_N14
\div_1|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~10_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|Equal0~8_combout\,
	datac => \div_1|Add0~18_combout\,
	combout => \div_1|cuenta~10_combout\);

-- Location: FF_X26_Y9_N15
\div_1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(10));

-- Location: LCCOMB_X25_Y10_N26
\div_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~20_combout\ = (\div_1|cuenta\(11) & (\div_1|Add0~19\ $ (GND))) # (!\div_1|cuenta\(11) & (!\div_1|Add0~19\ & VCC))
-- \div_1|Add0~21\ = CARRY((\div_1|cuenta\(11) & !\div_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(11),
	datad => VCC,
	cin => \div_1|Add0~19\,
	combout => \div_1|Add0~20_combout\,
	cout => \div_1|Add0~21\);

-- Location: LCCOMB_X26_Y9_N8
\div_1|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~9_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~20_combout\,
	combout => \div_1|cuenta~9_combout\);

-- Location: FF_X26_Y9_N9
\div_1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(11));

-- Location: LCCOMB_X26_Y9_N12
\div_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~6_combout\ = (\div_1|cuenta\(11) & (\div_1|cuenta\(10) & (!\div_1|cuenta\(9) & !\div_1|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(11),
	datab => \div_1|cuenta\(10),
	datac => \div_1|cuenta\(9),
	datad => \div_1|cuenta\(8),
	combout => \div_1|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y10_N28
\div_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~22_combout\ = (\div_1|cuenta\(12) & (!\div_1|Add0~21\)) # (!\div_1|cuenta\(12) & ((\div_1|Add0~21\) # (GND)))
-- \div_1|Add0~23\ = CARRY((!\div_1|Add0~21\) # (!\div_1|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(12),
	datad => VCC,
	cin => \div_1|Add0~21\,
	combout => \div_1|Add0~22_combout\,
	cout => \div_1|Add0~23\);

-- Location: LCCOMB_X25_Y10_N2
\div_1|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~8_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~22_combout\,
	combout => \div_1|cuenta~8_combout\);

-- Location: FF_X25_Y10_N3
\div_1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(12));

-- Location: LCCOMB_X25_Y10_N30
\div_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~24_combout\ = (\div_1|cuenta\(13) & (\div_1|Add0~23\ $ (GND))) # (!\div_1|cuenta\(13) & (!\div_1|Add0~23\ & VCC))
-- \div_1|Add0~25\ = CARRY((\div_1|cuenta\(13) & !\div_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(13),
	datad => VCC,
	cin => \div_1|Add0~23\,
	combout => \div_1|Add0~24_combout\,
	cout => \div_1|Add0~25\);

-- Location: LCCOMB_X25_Y10_N4
\div_1|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~7_combout\ = (\div_1|Add0~24_combout\ & !\div_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|Add0~24_combout\,
	datac => \div_1|Equal0~8_combout\,
	combout => \div_1|cuenta~7_combout\);

-- Location: FF_X25_Y10_N5
\div_1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(13));

-- Location: LCCOMB_X25_Y9_N0
\div_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~26_combout\ = (\div_1|cuenta\(14) & (!\div_1|Add0~25\)) # (!\div_1|cuenta\(14) & ((\div_1|Add0~25\) # (GND)))
-- \div_1|Add0~27\ = CARRY((!\div_1|Add0~25\) # (!\div_1|cuenta\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(14),
	datad => VCC,
	cin => \div_1|Add0~25\,
	combout => \div_1|Add0~26_combout\,
	cout => \div_1|Add0~27\);

-- Location: FF_X25_Y9_N1
\div_1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(14));

-- Location: LCCOMB_X25_Y9_N2
\div_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~28_combout\ = (\div_1|cuenta\(15) & (\div_1|Add0~27\ $ (GND))) # (!\div_1|cuenta\(15) & (!\div_1|Add0~27\ & VCC))
-- \div_1|Add0~29\ = CARRY((\div_1|cuenta\(15) & !\div_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(15),
	datad => VCC,
	cin => \div_1|Add0~27\,
	combout => \div_1|Add0~28_combout\,
	cout => \div_1|Add0~29\);

-- Location: LCCOMB_X26_Y9_N4
\div_1|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~6_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~28_combout\,
	combout => \div_1|cuenta~6_combout\);

-- Location: FF_X26_Y9_N5
\div_1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(15));

-- Location: LCCOMB_X26_Y9_N18
\div_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~5_combout\ = (!\div_1|cuenta\(14) & (\div_1|cuenta\(15) & (\div_1|cuenta\(12) & \div_1|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(14),
	datab => \div_1|cuenta\(15),
	datac => \div_1|cuenta\(12),
	datad => \div_1|cuenta\(13),
	combout => \div_1|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y10_N30
\div_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~7_combout\ = (!\div_1|cuenta\(6) & (!\div_1|cuenta\(7) & (\div_1|cuenta\(5) & !\div_1|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(6),
	datab => \div_1|cuenta\(7),
	datac => \div_1|cuenta\(5),
	datad => \div_1|cuenta\(4),
	combout => \div_1|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y9_N4
\div_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~30_combout\ = (\div_1|cuenta\(16) & (!\div_1|Add0~29\)) # (!\div_1|cuenta\(16) & ((\div_1|Add0~29\) # (GND)))
-- \div_1|Add0~31\ = CARRY((!\div_1|Add0~29\) # (!\div_1|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(16),
	datad => VCC,
	cin => \div_1|Add0~29\,
	combout => \div_1|Add0~30_combout\,
	cout => \div_1|Add0~31\);

-- Location: FF_X25_Y9_N5
\div_1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(16));

-- Location: LCCOMB_X25_Y9_N6
\div_1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~32_combout\ = (\div_1|cuenta\(17) & (\div_1|Add0~31\ $ (GND))) # (!\div_1|cuenta\(17) & (!\div_1|Add0~31\ & VCC))
-- \div_1|Add0~33\ = CARRY((\div_1|cuenta\(17) & !\div_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(17),
	datad => VCC,
	cin => \div_1|Add0~31\,
	combout => \div_1|Add0~32_combout\,
	cout => \div_1|Add0~33\);

-- Location: LCCOMB_X26_Y9_N22
\div_1|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~5_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|Equal0~8_combout\,
	datac => \div_1|Add0~32_combout\,
	combout => \div_1|cuenta~5_combout\);

-- Location: FF_X26_Y9_N23
\div_1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(17));

-- Location: LCCOMB_X25_Y9_N8
\div_1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~34_combout\ = (\div_1|cuenta\(18) & (!\div_1|Add0~33\)) # (!\div_1|cuenta\(18) & ((\div_1|Add0~33\) # (GND)))
-- \div_1|Add0~35\ = CARRY((!\div_1|Add0~33\) # (!\div_1|cuenta\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(18),
	datad => VCC,
	cin => \div_1|Add0~33\,
	combout => \div_1|Add0~34_combout\,
	cout => \div_1|Add0~35\);

-- Location: LCCOMB_X25_Y9_N30
\div_1|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~4_combout\ = (\div_1|Add0~34_combout\ & !\div_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Add0~34_combout\,
	datad => \div_1|Equal0~8_combout\,
	combout => \div_1|cuenta~4_combout\);

-- Location: FF_X25_Y9_N31
\div_1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(18));

-- Location: LCCOMB_X25_Y9_N10
\div_1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~36_combout\ = (\div_1|cuenta\(19) & (\div_1|Add0~35\ $ (GND))) # (!\div_1|cuenta\(19) & (!\div_1|Add0~35\ & VCC))
-- \div_1|Add0~37\ = CARRY((\div_1|cuenta\(19) & !\div_1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(19),
	datad => VCC,
	cin => \div_1|Add0~35\,
	combout => \div_1|Add0~36_combout\,
	cout => \div_1|Add0~37\);

-- Location: LCCOMB_X26_Y9_N28
\div_1|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~3_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~36_combout\,
	combout => \div_1|cuenta~3_combout\);

-- Location: FF_X26_Y9_N29
\div_1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(19));

-- Location: LCCOMB_X25_Y9_N12
\div_1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~38_combout\ = (\div_1|cuenta\(20) & (!\div_1|Add0~37\)) # (!\div_1|cuenta\(20) & ((\div_1|Add0~37\) # (GND)))
-- \div_1|Add0~39\ = CARRY((!\div_1|Add0~37\) # (!\div_1|cuenta\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(20),
	datad => VCC,
	cin => \div_1|Add0~37\,
	combout => \div_1|Add0~38_combout\,
	cout => \div_1|Add0~39\);

-- Location: LCCOMB_X26_Y9_N16
\div_1|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~2_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~38_combout\,
	combout => \div_1|cuenta~2_combout\);

-- Location: FF_X26_Y9_N17
\div_1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(20));

-- Location: LCCOMB_X25_Y9_N14
\div_1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~40_combout\ = (\div_1|cuenta\(21) & (\div_1|Add0~39\ $ (GND))) # (!\div_1|cuenta\(21) & (!\div_1|Add0~39\ & VCC))
-- \div_1|Add0~41\ = CARRY((\div_1|cuenta\(21) & !\div_1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(21),
	datad => VCC,
	cin => \div_1|Add0~39\,
	combout => \div_1|Add0~40_combout\,
	cout => \div_1|Add0~41\);

-- Location: LCCOMB_X26_Y9_N6
\div_1|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~1_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~40_combout\,
	combout => \div_1|cuenta~1_combout\);

-- Location: FF_X26_Y9_N7
\div_1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(21));

-- Location: LCCOMB_X25_Y9_N16
\div_1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~42_combout\ = (\div_1|cuenta\(22) & (!\div_1|Add0~41\)) # (!\div_1|cuenta\(22) & ((\div_1|Add0~41\) # (GND)))
-- \div_1|Add0~43\ = CARRY((!\div_1|Add0~41\) # (!\div_1|cuenta\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(22),
	datad => VCC,
	cin => \div_1|Add0~41\,
	combout => \div_1|Add0~42_combout\,
	cout => \div_1|Add0~43\);

-- Location: FF_X25_Y9_N17
\div_1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(22));

-- Location: LCCOMB_X25_Y9_N18
\div_1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~44_combout\ = (\div_1|cuenta\(23) & (\div_1|Add0~43\ $ (GND))) # (!\div_1|cuenta\(23) & (!\div_1|Add0~43\ & VCC))
-- \div_1|Add0~45\ = CARRY((\div_1|cuenta\(23) & !\div_1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(23),
	datad => VCC,
	cin => \div_1|Add0~43\,
	combout => \div_1|Add0~44_combout\,
	cout => \div_1|Add0~45\);

-- Location: LCCOMB_X25_Y9_N28
\div_1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|cuenta~0_combout\ = (!\div_1|Equal0~8_combout\ & \div_1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_1|Equal0~8_combout\,
	datad => \div_1|Add0~44_combout\,
	combout => \div_1|cuenta~0_combout\);

-- Location: FF_X25_Y9_N29
\div_1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(23));

-- Location: LCCOMB_X26_Y9_N30
\div_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~2_combout\ = (\div_1|cuenta\(21) & (\div_1|cuenta\(20) & (!\div_1|cuenta\(22) & \div_1|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(21),
	datab => \div_1|cuenta\(20),
	datac => \div_1|cuenta\(22),
	datad => \div_1|cuenta\(23),
	combout => \div_1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y9_N24
\div_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~3_combout\ = (\div_1|cuenta\(17) & (\div_1|cuenta\(19) & (!\div_1|cuenta\(16) & \div_1|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(17),
	datab => \div_1|cuenta\(19),
	datac => \div_1|cuenta\(16),
	datad => \div_1|cuenta\(18),
	combout => \div_1|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y10_N0
\div_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~0_combout\ = (!\div_1|cuenta\(2) & (!\div_1|cuenta\(3) & (\div_servo|cuenta\(0) & !\div_servo|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(2),
	datab => \div_1|cuenta\(3),
	datac => \div_servo|cuenta\(0),
	datad => \div_servo|cuenta\(1),
	combout => \div_1|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y9_N20
\div_1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~46_combout\ = (\div_1|cuenta\(24) & (!\div_1|Add0~45\)) # (!\div_1|cuenta\(24) & ((\div_1|Add0~45\) # (GND)))
-- \div_1|Add0~47\ = CARRY((!\div_1|Add0~45\) # (!\div_1|cuenta\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(24),
	datad => VCC,
	cin => \div_1|Add0~45\,
	combout => \div_1|Add0~46_combout\,
	cout => \div_1|Add0~47\);

-- Location: FF_X25_Y9_N21
\div_1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(24));

-- Location: LCCOMB_X25_Y9_N22
\div_1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~48_combout\ = (\div_1|cuenta\(25) & (\div_1|Add0~47\ $ (GND))) # (!\div_1|cuenta\(25) & (!\div_1|Add0~47\ & VCC))
-- \div_1|Add0~49\ = CARRY((\div_1|cuenta\(25) & !\div_1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(25),
	datad => VCC,
	cin => \div_1|Add0~47\,
	combout => \div_1|Add0~48_combout\,
	cout => \div_1|Add0~49\);

-- Location: FF_X25_Y9_N23
\div_1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(25));

-- Location: LCCOMB_X25_Y9_N24
\div_1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~50_combout\ = (\div_1|cuenta\(26) & (!\div_1|Add0~49\)) # (!\div_1|cuenta\(26) & ((\div_1|Add0~49\) # (GND)))
-- \div_1|Add0~51\ = CARRY((!\div_1|Add0~49\) # (!\div_1|cuenta\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1|cuenta\(26),
	datad => VCC,
	cin => \div_1|Add0~49\,
	combout => \div_1|Add0~50_combout\,
	cout => \div_1|Add0~51\);

-- Location: FF_X25_Y9_N25
\div_1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(26));

-- Location: LCCOMB_X25_Y9_N26
\div_1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Add0~52_combout\ = \div_1|cuenta\(27) $ (!\div_1|Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(27),
	cin => \div_1|Add0~51\,
	combout => \div_1|Add0~52_combout\);

-- Location: FF_X25_Y9_N27
\div_1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|cuenta\(27));

-- Location: LCCOMB_X26_Y9_N20
\div_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~1_combout\ = (!\div_1|cuenta\(27) & (!\div_1|cuenta\(25) & (!\div_1|cuenta\(26) & !\div_1|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(27),
	datab => \div_1|cuenta\(25),
	datac => \div_1|cuenta\(26),
	datad => \div_1|cuenta\(24),
	combout => \div_1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y9_N10
\div_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~4_combout\ = (\div_1|Equal0~2_combout\ & (\div_1|Equal0~3_combout\ & (\div_1|Equal0~0_combout\ & \div_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|Equal0~2_combout\,
	datab => \div_1|Equal0~3_combout\,
	datac => \div_1|Equal0~0_combout\,
	datad => \div_1|Equal0~1_combout\,
	combout => \div_1|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y9_N26
\div_1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|Equal0~8_combout\ = (\div_1|Equal0~6_combout\ & (\div_1|Equal0~5_combout\ & (\div_1|Equal0~7_combout\ & \div_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|Equal0~6_combout\,
	datab => \div_1|Equal0~5_combout\,
	datac => \div_1|Equal0~7_combout\,
	datad => \div_1|Equal0~4_combout\,
	combout => \div_1|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y11_N30
\div_1|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_1|salida~0_combout\ = \div_1|salida~q\ $ (\div_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|salida~q\,
	datad => \div_1|Equal0~8_combout\,
	combout => \div_1|salida~0_combout\);

-- Location: FF_X23_Y11_N31
\div_1|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_1|salida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1|salida~q\);

-- Location: LCCOMB_X29_Y12_N6
\div_btn|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~1_cout\ = CARRY((!\div_servo|cuenta\(0) & \div_servo|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_servo|cuenta\(0),
	datab => \div_servo|cuenta\(1),
	datad => VCC,
	cout => \div_btn|Add0~1_cout\);

-- Location: LCCOMB_X29_Y12_N8
\div_btn|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~3_cout\ = CARRY((!\div_btn|Add0~1_cout\) # (!\div_1|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(2),
	datad => VCC,
	cin => \div_btn|Add0~1_cout\,
	cout => \div_btn|Add0~3_cout\);

-- Location: LCCOMB_X29_Y12_N10
\div_btn|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~5_cout\ = CARRY((\div_1|cuenta\(3) & !\div_btn|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1|cuenta\(3),
	datad => VCC,
	cin => \div_btn|Add0~3_cout\,
	cout => \div_btn|Add0~5_cout\);

-- Location: LCCOMB_X29_Y12_N12
\div_btn|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~6_combout\ = (\div_btn|cuenta\(4) & (!\div_btn|Add0~5_cout\)) # (!\div_btn|cuenta\(4) & ((\div_btn|Add0~5_cout\) # (GND)))
-- \div_btn|Add0~7\ = CARRY((!\div_btn|Add0~5_cout\) # (!\div_btn|cuenta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(4),
	datad => VCC,
	cin => \div_btn|Add0~5_cout\,
	combout => \div_btn|Add0~6_combout\,
	cout => \div_btn|Add0~7\);

-- Location: LCCOMB_X29_Y12_N4
\div_btn|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~7_combout\ = (\div_btn|Add0~6_combout\ & !\div_btn|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|Add0~6_combout\,
	datad => \div_btn|Equal0~7_combout\,
	combout => \div_btn|cuenta~7_combout\);

-- Location: FF_X29_Y12_N5
\div_btn|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(4));

-- Location: LCCOMB_X29_Y12_N14
\div_btn|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~8_combout\ = (\div_btn|cuenta\(5) & (\div_btn|Add0~7\ $ (GND))) # (!\div_btn|cuenta\(5) & (!\div_btn|Add0~7\ & VCC))
-- \div_btn|Add0~9\ = CARRY((\div_btn|cuenta\(5) & !\div_btn|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(5),
	datad => VCC,
	cin => \div_btn|Add0~7\,
	combout => \div_btn|Add0~8_combout\,
	cout => \div_btn|Add0~9\);

-- Location: FF_X29_Y12_N15
\div_btn|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(5));

-- Location: LCCOMB_X29_Y12_N16
\div_btn|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~10_combout\ = (\div_btn|cuenta\(6) & (!\div_btn|Add0~9\)) # (!\div_btn|cuenta\(6) & ((\div_btn|Add0~9\) # (GND)))
-- \div_btn|Add0~11\ = CARRY((!\div_btn|Add0~9\) # (!\div_btn|cuenta\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(6),
	datad => VCC,
	cin => \div_btn|Add0~9\,
	combout => \div_btn|Add0~10_combout\,
	cout => \div_btn|Add0~11\);

-- Location: LCCOMB_X30_Y11_N4
\div_btn|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~6_combout\ = (!\div_btn|Equal0~7_combout\ & \div_btn|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|Equal0~7_combout\,
	datad => \div_btn|Add0~10_combout\,
	combout => \div_btn|cuenta~6_combout\);

-- Location: FF_X30_Y11_N5
\div_btn|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(6));

-- Location: LCCOMB_X29_Y12_N18
\div_btn|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~12_combout\ = (\div_btn|cuenta\(7) & (\div_btn|Add0~11\ $ (GND))) # (!\div_btn|cuenta\(7) & (!\div_btn|Add0~11\ & VCC))
-- \div_btn|Add0~13\ = CARRY((\div_btn|cuenta\(7) & !\div_btn|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(7),
	datad => VCC,
	cin => \div_btn|Add0~11\,
	combout => \div_btn|Add0~12_combout\,
	cout => \div_btn|Add0~13\);

-- Location: LCCOMB_X29_Y12_N2
\div_btn|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~5_combout\ = (\div_btn|Add0~12_combout\ & !\div_btn|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|Add0~12_combout\,
	datad => \div_btn|Equal0~7_combout\,
	combout => \div_btn|cuenta~5_combout\);

-- Location: FF_X29_Y12_N3
\div_btn|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(7));

-- Location: LCCOMB_X30_Y11_N22
\div_btn|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~6_combout\ = (!\div_btn|cuenta\(5) & (\div_btn|cuenta\(6) & (\div_btn|cuenta\(7) & \div_btn|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(5),
	datab => \div_btn|cuenta\(6),
	datac => \div_btn|cuenta\(7),
	datad => \div_btn|cuenta\(4),
	combout => \div_btn|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y12_N20
\div_btn|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~14_combout\ = (\div_btn|cuenta\(8) & (!\div_btn|Add0~13\)) # (!\div_btn|cuenta\(8) & ((\div_btn|Add0~13\) # (GND)))
-- \div_btn|Add0~15\ = CARRY((!\div_btn|Add0~13\) # (!\div_btn|cuenta\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(8),
	datad => VCC,
	cin => \div_btn|Add0~13\,
	combout => \div_btn|Add0~14_combout\,
	cout => \div_btn|Add0~15\);

-- Location: FF_X29_Y12_N21
\div_btn|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(8));

-- Location: LCCOMB_X29_Y12_N22
\div_btn|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~16_combout\ = (\div_btn|cuenta\(9) & (\div_btn|Add0~15\ $ (GND))) # (!\div_btn|cuenta\(9) & (!\div_btn|Add0~15\ & VCC))
-- \div_btn|Add0~17\ = CARRY((\div_btn|cuenta\(9) & !\div_btn|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(9),
	datad => VCC,
	cin => \div_btn|Add0~15\,
	combout => \div_btn|Add0~16_combout\,
	cout => \div_btn|Add0~17\);

-- Location: LCCOMB_X29_Y12_N0
\div_btn|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~4_combout\ = (\div_btn|Add0~16_combout\ & !\div_btn|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_btn|Add0~16_combout\,
	datad => \div_btn|Equal0~7_combout\,
	combout => \div_btn|cuenta~4_combout\);

-- Location: FF_X29_Y12_N1
\div_btn|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(9));

-- Location: LCCOMB_X29_Y12_N24
\div_btn|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~18_combout\ = (\div_btn|cuenta\(10) & (!\div_btn|Add0~17\)) # (!\div_btn|cuenta\(10) & ((\div_btn|Add0~17\) # (GND)))
-- \div_btn|Add0~19\ = CARRY((!\div_btn|Add0~17\) # (!\div_btn|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(10),
	datad => VCC,
	cin => \div_btn|Add0~17\,
	combout => \div_btn|Add0~18_combout\,
	cout => \div_btn|Add0~19\);

-- Location: FF_X29_Y12_N25
\div_btn|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(10));

-- Location: LCCOMB_X29_Y12_N26
\div_btn|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~20_combout\ = (\div_btn|cuenta\(11) & (\div_btn|Add0~19\ $ (GND))) # (!\div_btn|cuenta\(11) & (!\div_btn|Add0~19\ & VCC))
-- \div_btn|Add0~21\ = CARRY((\div_btn|cuenta\(11) & !\div_btn|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(11),
	datad => VCC,
	cin => \div_btn|Add0~19\,
	combout => \div_btn|Add0~20_combout\,
	cout => \div_btn|Add0~21\);

-- Location: FF_X29_Y12_N27
\div_btn|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(11));

-- Location: LCCOMB_X29_Y12_N28
\div_btn|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~22_combout\ = (\div_btn|cuenta\(12) & (!\div_btn|Add0~21\)) # (!\div_btn|cuenta\(12) & ((\div_btn|Add0~21\) # (GND)))
-- \div_btn|Add0~23\ = CARRY((!\div_btn|Add0~21\) # (!\div_btn|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(12),
	datad => VCC,
	cin => \div_btn|Add0~21\,
	combout => \div_btn|Add0~22_combout\,
	cout => \div_btn|Add0~23\);

-- Location: LCCOMB_X30_Y11_N14
\div_btn|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~3_combout\ = (!\div_btn|Equal0~7_combout\ & \div_btn|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|Equal0~7_combout\,
	datad => \div_btn|Add0~22_combout\,
	combout => \div_btn|cuenta~3_combout\);

-- Location: FF_X30_Y11_N15
\div_btn|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(12));

-- Location: LCCOMB_X29_Y12_N30
\div_btn|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~24_combout\ = (\div_btn|cuenta\(13) & (\div_btn|Add0~23\ $ (GND))) # (!\div_btn|cuenta\(13) & (!\div_btn|Add0~23\ & VCC))
-- \div_btn|Add0~25\ = CARRY((\div_btn|cuenta\(13) & !\div_btn|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(13),
	datad => VCC,
	cin => \div_btn|Add0~23\,
	combout => \div_btn|Add0~24_combout\,
	cout => \div_btn|Add0~25\);

-- Location: FF_X29_Y12_N31
\div_btn|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(13));

-- Location: LCCOMB_X29_Y11_N0
\div_btn|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~26_combout\ = (\div_btn|cuenta\(14) & (!\div_btn|Add0~25\)) # (!\div_btn|cuenta\(14) & ((\div_btn|Add0~25\) # (GND)))
-- \div_btn|Add0~27\ = CARRY((!\div_btn|Add0~25\) # (!\div_btn|cuenta\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(14),
	datad => VCC,
	cin => \div_btn|Add0~25\,
	combout => \div_btn|Add0~26_combout\,
	cout => \div_btn|Add0~27\);

-- Location: FF_X29_Y11_N1
\div_btn|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(14));

-- Location: LCCOMB_X29_Y11_N2
\div_btn|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~28_combout\ = (\div_btn|cuenta\(15) & (\div_btn|Add0~27\ $ (GND))) # (!\div_btn|cuenta\(15) & (!\div_btn|Add0~27\ & VCC))
-- \div_btn|Add0~29\ = CARRY((\div_btn|cuenta\(15) & !\div_btn|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(15),
	datad => VCC,
	cin => \div_btn|Add0~27\,
	combout => \div_btn|Add0~28_combout\,
	cout => \div_btn|Add0~29\);

-- Location: FF_X29_Y11_N3
\div_btn|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(15));

-- Location: LCCOMB_X30_Y11_N0
\div_btn|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~4_combout\ = (!\div_btn|cuenta\(14) & (\div_btn|cuenta\(12) & (!\div_btn|cuenta\(15) & !\div_btn|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(14),
	datab => \div_btn|cuenta\(12),
	datac => \div_btn|cuenta\(15),
	datad => \div_btn|cuenta\(13),
	combout => \div_btn|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y12_N28
\div_btn|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~5_combout\ = (\div_btn|cuenta\(9) & (!\div_btn|cuenta\(10) & (!\div_btn|cuenta\(11) & !\div_btn|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(9),
	datab => \div_btn|cuenta\(10),
	datac => \div_btn|cuenta\(11),
	datad => \div_btn|cuenta\(8),
	combout => \div_btn|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y11_N4
\div_btn|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~30_combout\ = (\div_btn|cuenta\(16) & (!\div_btn|Add0~29\)) # (!\div_btn|cuenta\(16) & ((\div_btn|Add0~29\) # (GND)))
-- \div_btn|Add0~31\ = CARRY((!\div_btn|Add0~29\) # (!\div_btn|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(16),
	datad => VCC,
	cin => \div_btn|Add0~29\,
	combout => \div_btn|Add0~30_combout\,
	cout => \div_btn|Add0~31\);

-- Location: LCCOMB_X29_Y11_N30
\div_btn|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~2_combout\ = (!\div_btn|Equal0~7_combout\ & \div_btn|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|Equal0~7_combout\,
	datac => \div_btn|Add0~30_combout\,
	combout => \div_btn|cuenta~2_combout\);

-- Location: FF_X29_Y11_N31
\div_btn|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(16));

-- Location: LCCOMB_X29_Y11_N6
\div_btn|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~32_combout\ = (\div_btn|cuenta\(17) & (\div_btn|Add0~31\ $ (GND))) # (!\div_btn|cuenta\(17) & (!\div_btn|Add0~31\ & VCC))
-- \div_btn|Add0~33\ = CARRY((\div_btn|cuenta\(17) & !\div_btn|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(17),
	datad => VCC,
	cin => \div_btn|Add0~31\,
	combout => \div_btn|Add0~32_combout\,
	cout => \div_btn|Add0~33\);

-- Location: LCCOMB_X30_Y11_N2
\div_btn|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~1_combout\ = (\div_btn|Add0~32_combout\ & !\div_btn|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_btn|Add0~32_combout\,
	datad => \div_btn|Equal0~7_combout\,
	combout => \div_btn|cuenta~1_combout\);

-- Location: FF_X30_Y11_N3
\div_btn|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(17));

-- Location: LCCOMB_X29_Y11_N8
\div_btn|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~34_combout\ = (\div_btn|cuenta\(18) & (!\div_btn|Add0~33\)) # (!\div_btn|cuenta\(18) & ((\div_btn|Add0~33\) # (GND)))
-- \div_btn|Add0~35\ = CARRY((!\div_btn|Add0~33\) # (!\div_btn|cuenta\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(18),
	datad => VCC,
	cin => \div_btn|Add0~33\,
	combout => \div_btn|Add0~34_combout\,
	cout => \div_btn|Add0~35\);

-- Location: FF_X29_Y11_N9
\div_btn|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(18));

-- Location: LCCOMB_X29_Y11_N10
\div_btn|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~36_combout\ = (\div_btn|cuenta\(19) & (\div_btn|Add0~35\ $ (GND))) # (!\div_btn|cuenta\(19) & (!\div_btn|Add0~35\ & VCC))
-- \div_btn|Add0~37\ = CARRY((\div_btn|cuenta\(19) & !\div_btn|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(19),
	datad => VCC,
	cin => \div_btn|Add0~35\,
	combout => \div_btn|Add0~36_combout\,
	cout => \div_btn|Add0~37\);

-- Location: FF_X29_Y11_N11
\div_btn|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(19));

-- Location: LCCOMB_X30_Y11_N26
\div_btn|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~2_combout\ = (!\div_btn|cuenta\(19) & (\div_btn|cuenta\(17) & (!\div_btn|cuenta\(18) & \div_btn|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(19),
	datab => \div_btn|cuenta\(17),
	datac => \div_btn|cuenta\(18),
	datad => \div_btn|cuenta\(16),
	combout => \div_btn|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y11_N12
\div_btn|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~38_combout\ = (\div_btn|cuenta\(20) & (!\div_btn|Add0~37\)) # (!\div_btn|cuenta\(20) & ((\div_btn|Add0~37\) # (GND)))
-- \div_btn|Add0~39\ = CARRY((!\div_btn|Add0~37\) # (!\div_btn|cuenta\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(20),
	datad => VCC,
	cin => \div_btn|Add0~37\,
	combout => \div_btn|Add0~38_combout\,
	cout => \div_btn|Add0~39\);

-- Location: LCCOMB_X29_Y11_N28
\div_btn|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|cuenta~0_combout\ = (!\div_btn|Equal0~7_combout\ & \div_btn|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_btn|Equal0~7_combout\,
	datad => \div_btn|Add0~38_combout\,
	combout => \div_btn|cuenta~0_combout\);

-- Location: FF_X29_Y11_N29
\div_btn|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(20));

-- Location: LCCOMB_X29_Y11_N14
\div_btn|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~40_combout\ = (\div_btn|cuenta\(21) & (\div_btn|Add0~39\ $ (GND))) # (!\div_btn|cuenta\(21) & (!\div_btn|Add0~39\ & VCC))
-- \div_btn|Add0~41\ = CARRY((\div_btn|cuenta\(21) & !\div_btn|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(21),
	datad => VCC,
	cin => \div_btn|Add0~39\,
	combout => \div_btn|Add0~40_combout\,
	cout => \div_btn|Add0~41\);

-- Location: FF_X29_Y11_N15
\div_btn|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(21));

-- Location: LCCOMB_X29_Y11_N16
\div_btn|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~42_combout\ = (\div_btn|cuenta\(22) & (!\div_btn|Add0~41\)) # (!\div_btn|cuenta\(22) & ((\div_btn|Add0~41\) # (GND)))
-- \div_btn|Add0~43\ = CARRY((!\div_btn|Add0~41\) # (!\div_btn|cuenta\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(22),
	datad => VCC,
	cin => \div_btn|Add0~41\,
	combout => \div_btn|Add0~42_combout\,
	cout => \div_btn|Add0~43\);

-- Location: FF_X29_Y11_N17
\div_btn|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(22));

-- Location: LCCOMB_X29_Y11_N18
\div_btn|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~44_combout\ = (\div_btn|cuenta\(23) & (\div_btn|Add0~43\ $ (GND))) # (!\div_btn|cuenta\(23) & (!\div_btn|Add0~43\ & VCC))
-- \div_btn|Add0~45\ = CARRY((\div_btn|cuenta\(23) & !\div_btn|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(23),
	datad => VCC,
	cin => \div_btn|Add0~43\,
	combout => \div_btn|Add0~44_combout\,
	cout => \div_btn|Add0~45\);

-- Location: FF_X29_Y11_N19
\div_btn|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(23));

-- Location: LCCOMB_X29_Y11_N20
\div_btn|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~46_combout\ = (\div_btn|cuenta\(24) & (!\div_btn|Add0~45\)) # (!\div_btn|cuenta\(24) & ((\div_btn|Add0~45\) # (GND)))
-- \div_btn|Add0~47\ = CARRY((!\div_btn|Add0~45\) # (!\div_btn|cuenta\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(24),
	datad => VCC,
	cin => \div_btn|Add0~45\,
	combout => \div_btn|Add0~46_combout\,
	cout => \div_btn|Add0~47\);

-- Location: FF_X29_Y11_N21
\div_btn|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(24));

-- Location: LCCOMB_X29_Y11_N22
\div_btn|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~48_combout\ = (\div_btn|cuenta\(25) & (\div_btn|Add0~47\ $ (GND))) # (!\div_btn|cuenta\(25) & (!\div_btn|Add0~47\ & VCC))
-- \div_btn|Add0~49\ = CARRY((\div_btn|cuenta\(25) & !\div_btn|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(25),
	datad => VCC,
	cin => \div_btn|Add0~47\,
	combout => \div_btn|Add0~48_combout\,
	cout => \div_btn|Add0~49\);

-- Location: FF_X29_Y11_N23
\div_btn|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(25));

-- Location: LCCOMB_X29_Y11_N24
\div_btn|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~50_combout\ = (\div_btn|cuenta\(26) & (!\div_btn|Add0~49\)) # (!\div_btn|cuenta\(26) & ((\div_btn|Add0~49\) # (GND)))
-- \div_btn|Add0~51\ = CARRY((!\div_btn|Add0~49\) # (!\div_btn|cuenta\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_btn|cuenta\(26),
	datad => VCC,
	cin => \div_btn|Add0~49\,
	combout => \div_btn|Add0~50_combout\,
	cout => \div_btn|Add0~51\);

-- Location: FF_X29_Y11_N25
\div_btn|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(26));

-- Location: LCCOMB_X29_Y11_N26
\div_btn|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Add0~52_combout\ = \div_btn|cuenta\(27) $ (!\div_btn|Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(27),
	cin => \div_btn|Add0~51\,
	combout => \div_btn|Add0~52_combout\);

-- Location: FF_X29_Y11_N27
\div_btn|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|cuenta\(27));

-- Location: LCCOMB_X30_Y11_N24
\div_btn|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~0_combout\ = (!\div_btn|cuenta\(27) & (!\div_btn|cuenta\(25) & (!\div_btn|cuenta\(26) & !\div_btn|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(27),
	datab => \div_btn|cuenta\(25),
	datac => \div_btn|cuenta\(26),
	datad => \div_btn|cuenta\(24),
	combout => \div_btn|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y11_N30
\div_btn|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~1_combout\ = (!\div_btn|cuenta\(21) & (!\div_btn|cuenta\(23) & (!\div_btn|cuenta\(22) & \div_btn|cuenta\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|cuenta\(21),
	datab => \div_btn|cuenta\(23),
	datac => \div_btn|cuenta\(22),
	datad => \div_btn|cuenta\(20),
	combout => \div_btn|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y11_N12
\div_btn|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~3_combout\ = (\div_btn|Equal0~2_combout\ & (\div_btn|Equal0~0_combout\ & (\div_btn|Equal0~1_combout\ & \div_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|Equal0~2_combout\,
	datab => \div_btn|Equal0~0_combout\,
	datac => \div_btn|Equal0~1_combout\,
	datad => \div_1|Equal0~0_combout\,
	combout => \div_btn|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y11_N10
\div_btn|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|Equal0~7_combout\ = (\div_btn|Equal0~6_combout\ & (\div_btn|Equal0~4_combout\ & (\div_btn|Equal0~5_combout\ & \div_btn|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|Equal0~6_combout\,
	datab => \div_btn|Equal0~4_combout\,
	datac => \div_btn|Equal0~5_combout\,
	datad => \div_btn|Equal0~3_combout\,
	combout => \div_btn|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y11_N20
\div_btn|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|salida~0_combout\ = \div_btn|salida~q\ $ (\div_btn|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|salida~q\,
	datad => \div_btn|Equal0~7_combout\,
	combout => \div_btn|salida~0_combout\);

-- Location: LCCOMB_X30_Y11_N16
\div_btn|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_btn|salida~feeder_combout\ = \div_btn|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_btn|salida~0_combout\,
	combout => \div_btn|salida~feeder_combout\);

-- Location: FF_X30_Y11_N17
\div_btn|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_btn|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_btn|salida~q\);

-- Location: CLKCTRL_G9
\div_btn|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div_btn|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div_btn|salida~clkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N8
\btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LCCOMB_X23_Y11_N24
\btn_c|regis[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_c|regis[0]~feeder_combout\ = \btn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn~input_o\,
	combout => \btn_c|regis[0]~feeder_combout\);

-- Location: FF_X23_Y11_N25
\btn_c|regis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_btn|salida~clkctrl_outclk\,
	d => \btn_c|regis[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_c|regis\(0));

-- Location: LCCOMB_X23_Y11_N4
\btn_c|regis[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_c|regis[1]~feeder_combout\ = \btn_c|regis\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_c|regis\(0),
	combout => \btn_c|regis[1]~feeder_combout\);

-- Location: FF_X23_Y11_N5
\btn_c|regis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_btn|salida~clkctrl_outclk\,
	d => \btn_c|regis[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_c|regis\(1));

-- Location: LCCOMB_X23_Y11_N28
\btn_c|regis[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_c|regis[2]~feeder_combout\ = \btn_c|regis\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_c|regis\(1),
	combout => \btn_c|regis[2]~feeder_combout\);

-- Location: FF_X23_Y11_N29
\btn_c|regis[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_btn|salida~clkctrl_outclk\,
	d => \btn_c|regis[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_c|regis\(2));

-- Location: LCCOMB_X23_Y11_N26
\btn_c|regis[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_c|regis[3]~feeder_combout\ = \btn_c|regis\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_c|regis\(2),
	combout => \btn_c|regis[3]~feeder_combout\);

-- Location: FF_X23_Y11_N27
\btn_c|regis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_btn|salida~clkctrl_outclk\,
	d => \btn_c|regis[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_c|regis\(3));

-- Location: LCCOMB_X23_Y11_N20
\btn_c|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_c|Equal0~0_combout\ = (!\btn_c|regis\(3) & (!\btn_c|regis\(2) & (!\btn_c|regis\(1) & !\btn_c|regis\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_c|regis\(3),
	datab => \btn_c|regis\(2),
	datac => \btn_c|regis\(1),
	datad => \btn_c|regis\(0),
	combout => \btn_c|Equal0~0_combout\);

-- Location: FF_X23_Y11_N21
\btn_c|bto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_btn|salida~clkctrl_outclk\,
	d => \btn_c|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_c|bto~q\);

-- Location: LCCOMB_X23_Y11_N22
\f_calor|f_control\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_calor|f_control~combout\ = LCELL((\div_1|salida~q\) # (\btn_c|bto~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1|salida~q\,
	datad => \btn_c|bto~q\,
	combout => \f_calor|f_control~combout\);

-- Location: CLKCTRL_G6
\f_calor|f_control~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \f_calor|f_control~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \f_calor|f_control~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\calor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_calor,
	o => \calor~input_o\);

-- Location: LCCOMB_X6_Y10_N28
\Dc[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dc[1]~0_combout\ = (\FQ0|qout~q\ & ((\calor~input_o\) # (!\FQ1|qout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calor~input_o\,
	datac => \FQ1|qout~q\,
	datad => \FQ0|qout~q\,
	combout => \Dc[1]~0_combout\);

-- Location: FF_X6_Y10_N29
\FQ1|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f_calor|f_control~clkctrl_outclk\,
	d => \Dc[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FQ1|qout~q\);

-- Location: LCCOMB_X6_Y10_N16
\Dc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- Dc(0) = (\calor~input_o\) # ((\FQ0|qout~q\ & !\FQ1|qout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calor~input_o\,
	datac => \FQ0|qout~q\,
	datad => \FQ1|qout~q\,
	combout => Dc(0));

-- Location: FF_X6_Y10_N17
\FQ0|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f_calor|f_control~clkctrl_outclk\,
	d => Dc(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FQ0|qout~q\);

-- Location: LCCOMB_X6_Y10_N18
\sServo1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sServo1|LessThan0~0_combout\ = (!\sServo1|cont\(4) & (!\sServo1|cont\(2) & (!\sServo1|cont\(1) & !\sServo1|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sServo1|cont\(4),
	datab => \sServo1|cont\(2),
	datac => \sServo1|cont\(1),
	datad => \sServo1|cont\(3),
	combout => \sServo1|LessThan0~0_combout\);

-- Location: FF_X6_Y10_N19
\sServo1|Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_servo|salida~clkctrl_outclk\,
	d => \sServo1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sServo1|Y~q\);

-- Location: LCCOMB_X6_Y10_N6
\puerta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \puerta~0_combout\ = (\FQ0|qout~q\ & (\sServo2|Y~q\)) # (!\FQ0|qout~q\ & ((\sServo1|Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sServo2|Y~q\,
	datac => \FQ0|qout~q\,
	datad => \sServo1|Y~q\,
	combout => \puerta~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
\lluvia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lluvia,
	o => \lluvia~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\frio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_frio,
	o => \frio~input_o\);

-- Location: IOIBUF_X1_Y0_N22
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
END structure;


