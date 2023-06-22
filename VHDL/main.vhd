library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity main is 
	port(
	
	clk,btn : in std_logic;
	
	lluvia, frio, calor, PIR : in std_logic;
	puerta, comedero, alarma : out std_logic
	
	);

end main;


architecture cerebro of main is
----------------------------------SEÑALES DE PRUEBA----------------------------------

signal f_btn, f_servo, f_buzz, servo_0, servo_180, bto, buzz : std_logic;




--Señales contador
signal f_cont : std_logic;
signal f_ffD : std_logic_vector(1 downto 0); --(0) previo control (1) frecuencia controlada

---- Señales FSM ----
signal Dc, Qc: std_logic_vector(1 downto 0);  --entrada(D) y salida(Q) flip flop tipo D para controlar calor


---- Señales verificación salida ----
signal req_P, req_CA: std_logic_vector(1 downto 0);	-- Almacena si se cumplen requerimientos 
																		-- para las salidas


-- Componentes ---------------------------------
component div_frec
	port(
		-- Input ports
		clk : in  std_logic;
		Nciclos: in	integer;			
		
		-- Output ports
		f: out std_logic);

end component;

	
component anti_rebote 

	port(
		-- Input ports
		clk: in  std_logic;		
		btn: in std_logic;
		
		-- Output ports
		bto: out std_logic);
		
end component;

component senal_PWM  

	port(
		f_pwm : in std_logic;
		nCiclos, lim: in integer;
		PWM : out std_logic:='0');

end component;

component ffD

	port(
		-- Input ports
		qin: in	std_logic;
		D	: in  std_logic;
		set: in  std_logic;
		rst: in  std_logic;
		clk: in	std_logic;

		-- Output ports
		Q	: out std_logic);
	
end component;


component control_temp

	port(
		f, s_cont: in std_logic;
		s_control : in std_logic;

		f_control : out std_logic) ;
		
end component;

begin
------------------------------------SECCION DE PRUEBAS------------------------------------
			--Perifericos de salida
div_btn : div_frec port map(clk, 1250000, f_btn);		--Boton
div_servo : div_frec port map(clk, 12500, f_servo);	--Servomotor
div_buzz : div_frec port map(clk, 12500000, f_buzz);		--Buzzer

btn_c : anti_rebote port map(f_btn, btn, bto);
alarm : senal_PWM port map(f_buzz, 3, 2, buzz);
sServo1 : senal_PWM port map(f_servo, 40, 1, servo_0);
sServo2 : senal_PWM port map(f_servo, 40, 5, servo_180);


-------- Divisores de frecuencia --------
div_1 : div_frec port map(clk, 12500000, f_ffD(0));	-- f_ffD => cada 0.5 seg
div_2 : div_frec port map(clk, 25000000, f_cont);	-- f_cont => cada 1 seg


-------- Máquina FSM - Estado calor --------
Dc(0) <= calor or (not Qc(1) and Qc(0)); 				-- Definición compuertas de 
Dc(1) <= Qc(0) and (not Qc(1) or calor);				-- entrada

f_calor : control_temp port map(f_ffD(0), bto, bto, f_ffD(1));

FQ0 : ffD port map('0', Dc(0),'0','0', f_ffD(1), Qc(0)); --Flip-Flops
FQ1 : ffD port map('0', Dc(1),'0','0', f_ffD(1), Qc(1));

req_P(0) <= Qc(0);
req_CA(0) <= not Qc(1) and Qc(0);



--------- Ordenes perifericos de salida ---------
process(req_P, req_CA)

begin
	--------Puerta--------
	if(req_P(0) = '1') then
		puerta <= servo_180;
	else 
		puerta <= servo_0;
	end if;
	
	--------Comedero y alarma--------
	
--	if(req_CA(0) = '1') then
--		comedero <= servo_180;
--		alarma <= buzz;
--	else
--		comedero <= servo_0;
--		alarma <= '1';
--	end if;
--	
alarma<= not calor;
end process;
end cerebro;