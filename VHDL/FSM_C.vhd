library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity FSM_C is
   port (
	--- Inputs signals
	clk, C,abrir : in std_logic; --clk => reloj; C => Calor
	  
	  
	--- Output signals
	Q     : out std_logic_vector(1 downto 0);  --Indicador del estado actual
	sal   : out std_logic_vector (1 downto 0)  --Salida activadora de perifericos
	-- S(1)=Puerta; S(0)=Comida/Alarma; 
    );
end FSM_C;

architecture C of FSM_C is
signal D, X : std_logic_vector(1 downto 0);

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


FQ0 : ffD port map('0', D(0),abrir,'0', clk, X(0)); --Flip-Flops
FQ1 : ffD port map('0', D(1),abrir,'0', clk, X(1));

Q <= (X(1), X(0));

sal(1) <= X(0);
sal(0) <= not X(1) and X(0);
end C;
