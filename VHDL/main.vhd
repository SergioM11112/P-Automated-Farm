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

component contador
	port(
		start,clk : in std_logic;
		sal : out std_logic
	);

end component;

component FSM_C 
   port (
	clk, C : in std_logic; 
	  
	Q     : out std_logic_vector(1 downto 0);  
	sal   : out std_logic_vector (2 downto 0)
	-- S(2)=Puerta; S(1)=Comida; S(0)=Alarma.  
    );
end component;

component FSM_LF
    port (
	 --Input ports
	 
		clk : in std_logic;
		I : in std_logic_vector (2 downto 0);
		-- I(2)=Frio; I(1)= Lluvia; I(0)=PIR.
		
		Q     : out std_logic_vector(1 downto 0);
		sal   : out std_logic_vector (2 downto 0)
		-- S(2)=Puerta; S(1)=Comida; S(0)=Alarma.  
    );
end component;


--Señales frecuencias
signal f_cont, f_ffD : std_logic:='0';  							-- f_cont : frec. contador
signal f_FSM : std_logic_vector(1 downto 0) := "00";	-- f_ffD : frec. natural Flip flops de las FSM
																		-- f_FSM : frec. interrumpida de FSM por sumador
--Señales FSM 
signal Qc, Qlf, contar, s_cont: std_logic_vector(1 downto 0):="00";	--Qc => estado FSM calor
signal Sc ,Slf : std_logic_vector(2 downto 0) :="000";																		--Qlf => estado FSM lluvia - frio 

	
begin

-------- Divisores de frecuencia --------
div_cont : div_frec port map(clk, 25000000, f_cont);	-- f_cont => cada 1 seg
--div_ffD : div_frec port map(clk, 12500000, f_ffD); 	-- f_ffD => cada 0.5 seg
div_ffD : div_frec port map(clk, 125000000, f_ffD);		-- f_ffD => cada 5 seg

-------- FSM calor --------
cont_C : contador port map(contar(0), f_cont,s_cont(0));


contar(0) <=  Qc(0) and not Qc(1);
f_FSM(0) <= (contar(0) and s_cont(0)) or (not contar(0) and f_ffD);
fsm_0 : FSM_C port map(f_FSM(0), calor, Qc, Sc);


-------- FSM lluvia/frio --------
cont_LF : contador port map(contar(1), f_cont,s_cont(1));


contar(1) <=  not Qlf(1) and Qlf(0);
f_FSM(1) <= (contar(1) and s_cont(1)) or (not contar(1) and f_ffD);
fsm_1 : FSM_LF port map(f_FSM(1), (frio, lluvia, PIR), Qlf, Slf);



salida_ff(0) <= not Qlf(0);
salida_ff(1) <= not Qlf(1);
 
led <= not f_cont;

alarma <= not (not Qlf(1) and Qlf(0));

--------- Ordenes perifericos de salida ---------
--process(req_P, req_CA)
--
--begin
--	--------Puerta--------
--	if(req_P(0) = '1') then
--		puerta <= servo_180;
--	else 
--		puerta <= servo_0;
--	end if;
--	
--	--------Comedero y alarma--------
--	
----	if(req_CA(0) = '1') then
----		comedero <= servo_180;
----		alarma <= buzz;
----	else
----		comedero <= servo_0;
----		alarma <= '1';
----	end if;
----	
--alarma<= not calor;
--end process;
end cerebro;