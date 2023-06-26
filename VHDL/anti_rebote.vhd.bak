library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity anti_rebote is

	port(
		-- Input ports
		clk: in  std_logic;		
		btn: in std_logic;
		
		-- Output ports
		bto: out std_logic);
		
end anti_rebote;

architecture registro of anti_rebote is
signal regis : std_logic_vector(3 downto 0);
	
begin

	process(clk)
	
	begin
	
	if(rising_edge(clk)) then
		regis <= regis(2 downto 0) & btn;
		
		
		if regis = "0000" then
			bto <= '1';
		else
			bto <= '0';
		end if;
	end if;
		
	end process;
	
end registro;