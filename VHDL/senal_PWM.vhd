library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity senal_PWM is 

	port(
		f_pwm : in std_logic;
		nCiclos, lim: in integer;
		PWM : out std_logic:='0');

end senal_PWM;

architecture control of senal_PWM is 

--Señales intermedias ---------------------------------
	signal Y : std_logic;
	signal cont : integer range 1 to 30 := 1; 
	

begin


-- Cuerpo ---------------------------------

process(f_pwm)
	begin

	if rising_edge(f_pwm) then 
		if(cont<=lim) then 
			Y <= '1';
		else
			Y <= '0';
		end if;
		
		if(cont = nCiclos) then 
			cont <= 1;
		else
			cont <= cont+1;
		end if;
	end if; 
end process;

	PWM <= Y;

end control;