LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
    
entity catraca is
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
end catraca;

architecture rtl of catraca is 

-- Aqui criamos um tipo com o nome dos estados que usaremos 
   type state_type is (s_travado, s_liberado); 

-- Geramos dois sinais com do tipo de estado definido anteriormente
-- esses sinais serão usados na máquina de estados
   signal state, next_state  : state_type; 
   
-- Variaveis internas 
   signal pistao_i, led_i    : std_logic; 
begin  
 
   -- as FSM devem ser síncronas, esse processo é
   -- responsável pelo sincronismo
   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (rst = '1') then
            state  <= s_travado;
            pistao <= '1';
            led    <= '0';
         else
            state  <= next_state;
            pistao <= pistao_i;
            led    <= led_i;
         end if;        
      end if;
   end process;
 
   --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      if state = s_travado then
         pistao_i <= '1';
         led_i    <= '0';
      elsif state = s_liberado then
         pistao_i <= '0';
         led_i    <= '1';
      else
        pistao_i <= '1';
        led_i    <= '1';
      end if;
   end process;
 
   -- próximo estado
   NEXT_STATE_DECODE: process (state, giro, moeda)
   begin
      next_state <= state;  --default is to stay in current state

      case state is
         when s_travado =>
            if moeda = '1' then
               next_state <= s_liberado;
            end if;
            
         when s_liberado =>
            if giro = '1' then
               next_state <= s_travado;
            end if;
            
         when others =>
            next_state <= s_travado;
      end case;      
      
   end process;

end rtl;
