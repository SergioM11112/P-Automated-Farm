library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity control_temp is

	port(
		f, s_cont: in std_logic;
		s_control : in std_logic;

		f_control : out std_logic) ;
		
end control_temp;

architecture mux of control_temp is
begin
	f_control <= (not s_control and f) or (s_control and s_cont);

end mux;