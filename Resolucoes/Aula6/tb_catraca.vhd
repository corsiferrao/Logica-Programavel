library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_catraca is
end tb_catraca;

architecture Behavioral of tb_catraca is

component catraca is
    port (
       clk   : in std_logic;
       rst   : in std_logic;
       
       -- Sensores
       moeda : in std_logic;
       giro  : in std_logic;
       
       -- Atuadores
       pistao : out std_logic;
       led    : out std_logic        
    );
end component;

    signal clk, rst, moeda, giro, pistao, led : std_logic := '0';

begin

 u1 : catraca
    port map (clk, rst, moeda, giro, pistao, led );

 process
 begin
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
 end process;
 
 process
 begin
    rst <= '1';
    wait for 40 ns;
    rst <= '0';
    wait;
 end process;

 process
 begin
    giro <= '0';
    moeda <= '0';
    wait for 60 ns;
    moeda <= '1';
    wait for 20 ns;
    moeda <= '0';
    wait for 60 ns;
    giro <= '1';
    wait for 20 ns;
    giro <= '0';
    wait;
 end process;

end Behavioral;
