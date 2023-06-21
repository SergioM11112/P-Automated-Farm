library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity main is 
	port(
	
	clk : in std_logic;
	
	lluvia, frio, calor, PIR : in std_logic;
	puerta, comedero, alarma : out std_logic
	
	);

end main;


architecture cerebro of main is
--Señales contador
signal f_cont : std_logic;


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


component contador

	port(
		f,rst : in std_logic;
		tiempo : out std_logic 
	);

end component;


begin

--Definición del contador
--div_cont : div_frec port map(clk, 250000000, f_cont);
div_cont : div_frec port map(clk, 25000000, f_cont);


	process(lluvia, frio, calor, PIR)

	variable cont : integer := 0;
	begin
	---------------- Inicio digrama ASM ----------------
	puerta <= '0';
	comedero <= '0';
	alarma <= '0';
	
	if (lluvia = '0' or frio = '1' or calor = '1') then
		cont := 0;
		
		while (cont < 10) loop
			puerta <= '1';
			comedero <= '1';
			alarma <= '1';
			cont := cont+1;
			
		end loop;
		wait;
		
		while (calor = '1') loop
			comedero <= '0';
			alarma <= '0';
		end loop;
		wait;
		
		if(lluvia = '0' or frio = '1') then
			puerta <= '0';
			comedero <= '0';
			alarma <= '0';
		end if;
		
		while(lluvia = '0' or frio = '1') then
			if(PIR = '1') then
			cont := 0;
		
			while (cont < 10) loop
				puerta <= '1';
				cont := cont+1;
				
			end loop;
			wait;
			end if;
		
		end loop;
		wait;
		
	end if;
	
	
	end process; 
end cerebro;