LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
	
entity SS_controller is
generic(
	fclk : natural := 100; -- frequencia do clk (Mhz)
	f7s  : natural := 100  -- frequencia de atualizacao dos displays (Hz)
);
port(
	clk         : in STD_LOGIC;
	btnCpuReset : in STD_LOGIC;
	   
	led : out STD_LOGIC_VECTOR (15 downto 0);
	seg : out STD_LOGIC_VECTOR (6 downto 0);
	an  : out STD_LOGIC_VECTOR (7 downto 0);
	dp  : out STD_LOGIC
);
end SS_controller;
	
ARCHITECTURE rtl OF SS_controller IS

	-- Constantes que definem o valor mostrado no display
	signal SS1_valor : integer range 0 to 9 := 0;
	signal SS2_valor : integer range 0 to 9 := 1;
	signal SS3_valor : integer range 0 to 9 := 2;
	signal SS4_valor : integer range 0 to 9 := 3;
	signal SS5_valor : integer range 0 to 9 := 4;
	signal SS6_valor : integer range 0 to 9 := 5;
	signal SS7_valor : integer range 0 to 9 := 6;
	signal SS8_valor : integer range 0 to 9 := 7;
	
    -- Valor máximo que contador deve atingir antes de alterar
    -- o valor mostrado, esse é o tempo em que cada display fica
    -- aceso  
    constant MAX_CNT : natural := (fclk*1_000_000/f7s/8);	

	signal val_atual : integer range 0 to 9;
    signal seg_atual : integer range 0 to 7;
    signal seg_n     : STD_LOGIC_VECTOR (6 downto 0);
			
BEGIN

    -- escolhe qual valor deve ser mostrado no display
    val_atual <= SS1_valor when seg_atual = 0 else
                 SS2_valor when seg_atual = 1 else
                 SS3_valor when seg_atual = 2 else
                 SS4_valor when seg_atual = 3 else
                 SS5_valor when seg_atual = 4 else
                 SS6_valor when seg_atual = 5 else
                 SS7_valor when seg_atual = 6 else
                 SS8_valor;
                
    -- aciona somente um dos displays
     an <= "11111110" when seg_atual = 0 else
           "11111101" when seg_atual = 1 else
           "11111011" when seg_atual = 2 else
           "11110111" when seg_atual = 3 else
           "11101111" when seg_atual = 4 else
           "11011111" when seg_atual = 5 else
           "10111111" when seg_atual = 6 else
           "01111111"; 

   -- Tabela com mapeamento dos leds       
    seg_n <= "0111111" when val_atual = 0  else  -- 0
             "0000110" when val_atual = 1  else  -- 0 
             "1011101" when val_atual = 2  else  -- 0
             "1001111" when val_atual = 3  else  -- 0
             "1100110" when val_atual = 4  else  -- 0
             "1101101" when val_atual = 5  else  -- 0
             "1111101" when val_atual = 6  else  -- 0 
             "0000111" when val_atual = 7  else  -- 0 
             "1111111" when val_atual = 8  else  -- 0 
             "1110011" when val_atual = 9  else  -- 0 
             "1000111" when val_atual = 10 else  -- A 
             "1111100" when val_atual = 11 else  -- B 
             "1111001" when val_atual = 12 else  -- C 
             "0111110" when val_atual = 13 else  -- D
             "1111001" when val_atual = 14 else  -- E
             "1100001";                          -- F

    -- Precisamos inverter pq na tabela 1 = acionado.
    seg <= not seg_n;

              
-- Processo para ciclar entre os diplays                      
process(clk)
    -- Sinal utilziado para armazenar o contador do clock
    variable cnt_clk   : natural range 0 to (MAX_CNT + 1) := 0;
begin
    if(rising_edge(clk)) then   
        if(cnt_clk >= MAX_CNT) then
            cnt_clk := 0; 
            
            if(seg_atual >= 7) then
                seg_atual <= 0; 
            else
                seg_atual <= seg_atual + 1;
            end if;
            
        else
            cnt_clk := cnt_clk + 1;
        end if;
        
     end if;
end process;
                      

END rtl;
