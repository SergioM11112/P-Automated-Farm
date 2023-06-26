library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity main is 
	port(
	
	clk,btn : in std_logic;
	
	lluvia, frio, calor, PIR : in std_logic;
	puerta, comedero, alarma, led : out std_logic;
	
	--Señales de prueba
	salida_ff : out std_logic_vector(1 downto 0)
	
	);

end main;


architecture cerebro of main is

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
		f_pwm, estado: in std_logic;
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

component contador
	port(
		start,clk : in std_logic;
		sal : out std_logic
	);

end component;

component FSM_C 
   port (
	clk, C,abrir : in std_logic; 
	  
	Q     : out std_logic_vector(1 downto 0);  
	sal   : out std_logic_vector (1 downto 0)
	-- S(1)=Puerta; S(0)=Comida/Alarma;  
    );
end component;

component FSM_LF
    port (
	 --Input ports
	 
		clk : in std_logic;
		I : in std_logic_vector (2 downto 0);
		-- I(2)=Frio; I(1)= Lluvia; I(0)=PIR.
		
		Q     : out std_logic_vector(1 downto 0);
		sal   : out std_logic_vector (1 downto 0)
		-- S(1)=Puerta; S(0)=Comida/Alarma; 
    );
end component;


--Señales frecuencias
signal f_cont, f_ffD, f_btn : std_logic:='0';  							-- f_cont : frec. contador
signal f_FSM : std_logic_vector(1 downto 0) := "00";	-- f_ffD : frec. natural Flip flops de las FSM
																		-- f_FSM : frec. interrumpida de FSM por sumador
--Señales FSM 
signal Qc, Qlf, contar, s_cont, Sc, Slf: std_logic_vector(1 downto 0):="00";	--Qc => estado FSM calor
																										--Qlf => estado FSM lluvia - frio 
--Señales perifericos de salida
signal f_servo, abrir,bto: std_logic:='0';


--Señales pulsador puerta interna
signal cont :integer := 0;

begin
-------- Configuracion interruptor --------
btn_rst : anti_rebote port map(f_btn, btn, bto);


-------- Divisores de frecuencia --------
div_cont : div_frec port map(clk, 25000000, f_cont);	-- f_cont => cada 1 seg
div_ffD : div_frec port map(clk, 12500000, f_ffD); 	-- f_ffD => cada 0.5 seg
div_servo : div_frec port map(clk, 12500, f_servo);
div_btn : div_frec port map(clk, 1250000, f_btn);

-------- FSM calor --------
cont_C : contador port map(contar(0), f_cont,s_cont(0));


contar(0) <=  Qc(0) and not Qc(1);
f_FSM(0) <= (contar(0) and s_cont(0)) or (not contar(0) and f_ffD);
fsm_0 : FSM_C port map(f_FSM(0), calor,abrir, Qc, Sc);


-------- FSM lluvia/frio --------
cont_LF : contador port map(contar(1), f_cont,s_cont(1));


contar(1) <=  not Qlf(1) and Qlf(0);
f_FSM(1) <= (contar(1) and s_cont(1)) or (not contar(1) and f_ffD);
fsm_1 : FSM_LF port map(f_FSM(1), (frio, lluvia, PIR), Qlf, Slf);


led <= not abrir;
salida_ff(0) <= not Qc(0);
salida_ff(1) <= not Qc(1);
 

--------- Definicion servo y buzzer ---------
sServo1 : senal_PWM port map(f_servo, Sc(1) or Slf(1), puerta);

pulsador : ffD port map('0', not abrir, '0','0',bto,abrir);

--------- Perifericos de salida ---------

process(Sc, Slf, bto, f_cont)

begin
	--------alarma--------
	
	if(Sc(0) = '1' or Slf(0) = '1') then
		alarma <= f_cont;
	else 
		alarma <= '1';
	end if;
	
end process;

end cerebro;