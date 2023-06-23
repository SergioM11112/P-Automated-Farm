library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity FSM_LF is
    port (
	 --Input ports
	 
		clk : in std_logic;
		I : in std_logic_vector (2 downto 0);
		
		-- I representa las entradas de nuestro sistema
		-- redefinidas en la siguiente linea:
		-- I(2)=Frio; I(1)= Lluvia; I(0)=PIR.
		
		--Output ports
		Q     : out std_logic_vector(1 downto 0);
		sal   : out std_logic_vector (2 downto 0)
		
		-- Sal representa las salidas de nuestro circuito 
		--redefinidas en la linea siguiente:
		-- S(2)=Puerta; S(1)=Comida; S(0)=Alarma.  
    );
end FSM_LF;

architecture LF of FSM_LF is
	signal X  : std_logic_vector(1 downto 0); -- señales para las salidas de los F-F's
	signal Di : std_logic_vector(1 downto 0) := "00"; -- Señales para las entradas de los F-F's
 

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

-- Las ecuaciones se obtuvieron de los mapas de Karnaugh, ver imagenes respectivas.

    Di(0) <= (I(2) or not I(1)) and((not X(0) and not X(1)) or (X(1) and I(0)));
    Di(1) <= (X(0) or X(1)) and (I(2) or not I(1));

-- Llamamos el programa desarrollado para el F-F tipo D

    FFD_0 : ffD port map('0', Di(0), '0','0', Clk, X(0));
    FFD_1 : ffD port map('0', Di(1), '0','0', Clk, X(1));

    Q <= X(1) & X(0); -- Visualizamos los estados del circuito. 

-- visualizamos las salidas de nuestro sistema. 
	sal(2) <= X(0);
	sal(1) <= X(0) and not X(1);
	sal(0) <= X(0) and not X(1); 
end LF;
