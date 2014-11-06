library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_toplevel is
end tb_toplevel;

architecture Behavioral of tb_toplevel is

component toplevel is
    port (
            CLK : in std_logic;
            rst : in std_logic;
            
            botao : in  std_logic;
            led   : out std_logic_vector(7 downto 0));
 end component;

    signal clk, rst, botao : std_logic := '0';
    signal led : std_logic_vector(7 downto 0);

begin

 u1 : toplevel
    port map (clk, rst, botao, led );

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
    botao <= '0';
    wait for 60 ns;
    botao <= '1';
    wait for 20 ns;
    botao <= '0';
    wait;
 end process;

end Behavioral;
