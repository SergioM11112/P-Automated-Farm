library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity senal_PWM is 

	port(
		f_pwm, estado: in std_logic;
		PWM : out std_logic:='0');

end senal_PWM;

architecture control of senal_PWM is 

--Señales intermedias ---------------------------------
	signal Y : std_logic;
	signal cont, lim : integer range 1 to 100 := 1; 
	

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
		
		if(cont = 40) then 
			cont <= 1;
			if(estado = '1') then
				lim <= 5;
			elsif(estado = '0') then
				lim <= 1;
			end if;
		else
			cont <= cont+1;
		end if;
	end if; 
end process;

	PWM <= Y;

end control;