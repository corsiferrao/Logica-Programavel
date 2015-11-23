
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity toplevel is
  Port ( 
            clk         : in std_logic;  -- clock 100 Mhz (pino)
            btnCpuReset : in std_logic;  -- rst em 0 (pino)
            
            sw  : in  std_logic_vector(15 downto 0); -- chaves (pinos)
            led : out std_logic_vector(15 downto 0)  -- LEDs   (pinos)
  );
end toplevel;

architecture Behavioral of toplevel is

-- declarando componente do microprocessador
component uc_GPIO_wrapper is
  port (
     clk_in1 : in STD_LOGIC;
     gpio_led_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
     gpio_sw_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
     reset : in STD_LOGIC;
     reset_rtl : in STD_LOGIC
  );
end component;

signal rst_interno : std_logic := '0';

begin

-- Rst interno é borda de subida, rst externo é borda de descida!
rst_interno <= not btnCpuReset;

u1 : uc_GPIO_wrapper 
    port map(
        clk_in1          => clk,
        gpio_led_tri_o   => led,
        gpio_sw_tri_i    => sw,
        reset_rtl        => rst_interno,
        reset            => rst_interno    
    );

end Behavioral;
