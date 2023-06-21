library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity prueba is 
end prueba;

architecture ach of prueba is 
begin

process is 
variable cont : integer := 0;

begin
	while cont < 10 loop
		cont := cont+1;
		
	end loop;
	wait;

end process;

end ach;