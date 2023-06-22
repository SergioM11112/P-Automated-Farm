library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador is

	port(
		f,rst : in std_logic;
		tiempo : out std_logic 
	);

end contador;

architecture contar of contador is 
--------- Componentes ---------

component ffJK
	port(
		-- Input ports
		Vin: in std_logic;
		J,K: in  std_logic;
		set, rst: in std_logic;
		clk: in	std_logic;

		-- Output ports
		Q	: out std_logic
		);
end component;

begin

process(rst)

begin
--	if(rst = '1') then
--		flip_flop : ffJK port map('0','1','1','1',rst, f, tiempo);
--	else
--		flip_flop : ffJK port map('0','0','1','1',rst, f, tiempo);
--	end if;
end process;

end contar;