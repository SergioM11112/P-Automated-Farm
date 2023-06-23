library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador is
	port(
		start,clk : in std_logic;
		sal : out std_logic;
		Q : out std_logic_vector(3 downto 0)
	);

end contador;


architecture con of contador is

signal ff : std_logic:='0';
signal X, JK : std_logic_vector(3 downto 0) := "0000"; 

component ffJK
	port
		(
		-- Input ports
		Vin: in std_logic;
		J,K: in  std_logic;
		clk: in	std_logic;

		-- Output ports
		Q	: out std_logic);

end component;
begin
    
	------ Configuracion de inicio contador ------
    ff <= (clk and start) or (not start and '0');

    -- Contador 10 seg
    JK(0) <= '1';
    JK(1) <= X(0) and not X(3) ;
    JK(2) <= X(0) and X(1) ;
    JK(3) <= (X(0) and X(1) and X(2)) or (X(0) and X(3)) ;


    cont_0 : ffJK port map('0', JK(0), JK(0), ff, X(0));
    cont_1 : ffJK port map('0', JK(1), JK(1), ff, X(1));
    cont_2 : ffJK port map('0', JK(2), JK(2), ff, X(2));
    cont_3 : ffJK port map('0', JK(3), JK(3), ff, X(3));

    Q <= X(3) & X(2) & X(1) & X(0);
	 sal <= ( X(3) and (not X(2)) and (not X(1)) and X(0));
end con;
