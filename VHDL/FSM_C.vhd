library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity FSM_C is
   port (
	--- Inputs signals
	clk, C : in std_logic; --clk => reloj; C => Calor
	  
	  
	--- Output signals
	Q     : out std_logic_vector(1 downto 0);  --Indicador del estado actual
	sal   : out std_logic_vector (2 downto 0)  --Salida activadora de perifericos
	-- S(2)=Puerta; S(1)=Comida; S(0)=Alarma.  
    );
end FSM_C;

architecture C of FSM_C is
signal D, X : std_logic_vector(1 downto 0);
signal f_FSM : std_logic; 

component ffD is
	port
	(
		-- Input ports
		qin: in	std_logic;
		D	: in  std_logic;
		set: in  std_logic;
		rst: in  std_logic;
		clk: in	std_logic;

		-- Output ports
		Q	: out std_logic);
end component;



begin

D(0) <= C or (not X(1) and X(0)); 				-- entradas
D(1) <= X(0) and (not X(1) or C);				-- Flip Flops


FQ0 : ffD port map('0', D(0),'0','0', f_FSM, X(0)); --Flip-Flops
FQ1 : ffD port map('0', D(1),'0','0', f_FSM, X(1));

Q <= (X(1), X(0));

sal(2) <= X(0);
sal(1) <= not X(1) and X(0);
sal(0) <= not X(1) and X(0);
end C;
