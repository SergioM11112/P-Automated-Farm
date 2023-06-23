library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador is
    port (
        start : in std_logic;
        f     : in std_logic;
        Q     : out std_logic_vector(3 downto 0);
        sal   : out std_logic
    );
end contador;

architecture con of contador is
    signal X    : std_logic_vector(3 downto 0);
    signal clk, rst: std_logic := '1';
    signal JK      : std_logic_vector(3 downto 0) := "0000";
    signal state   : std_logic_vector(1 downto 0) := "00";

    component ffJK is
        port (
            Vin : in std_logic;
            J   : in std_logic;
            K   : in std_logic;
            set : in std_logic;
            rst : in std_logic;
            clk : in std_logic;
            Q   : out std_logic
        );
    end component;

begin
    -- Configuraciones de reinicio
    -- 10 seg
    rst <= not ((not X(3)) and (not X(2)) and X(1) and (not X(0)));

    sal <= ((not X(3)) and (not X(2)) and X(1) and (not X(0)));

    -- Máquina de estados finitos
    process (clk, rst, start)
    begin
        if rst = '0' then
            state <= "00";
        elsif rising_edge(clk) then
            case state is
                when "00" =>  -- Estado inicial
                    if start = '1' then
                        state <= "01";
                    end if;
                when "01" =>  -- Contando
                    if f = '1' then
                        state <= "10";
                    end if;
                when "10" =>  -- Detenido
                    if f = '0' then
                        state <= "01";
                    end if;
                when others =>  -- Otros estados (incluyendo "11")
                    null;  -- No se realiza ninguna acción
            end case;
        end if;
    end process;

    -- Contador 10 seg
    JK(0) <= X(0);
    JK(1) <= X(0) and not X(3);
    JK(2) <= X(0) and X(1);
    JK(3) <= (X(0) and X(1) and X(2)) or (X(0) and X(3));

    clk <= Y(3) and not Y(2) and not Y(1) and Y(0);

    cont_0 : ffJK port map('1', '1', '1', '1', rst, clk, X(0));
    cont_1 : ffJK port map('0', JK(0), JK(0), '1', rst, clk, X(1));
    cont_2 : ffJK port map('0', JK(1), JK(1), '1', rst, clk, X(2));
    cont_3 : ffJK port map('1', JK(2), JK(2), rst, '1', clk, X(3));

    Q <= X(3) & X(2) & X(1) & X(0);
end con;
