library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

ENTITY latch IS
   PORT(
      rst : IN  STD_LOGIC; -- entradas
      set  : IN  STD_LOGIC;
      d   : IN  STD_LOGIC;
      clk : IN  STD_LOGIC; -- Clock
      q   : OUT STD_LOGIC
   );
END latch;
   
ARCHITECTURE bhv OF latch IS
BEGIN

---------------------
-- LATCH
---------------------

--   PROCESS(rst, en, d) 
--   BEGIN
--       IF rst = '0' THEN
--        q <= '0';
--       ELSIF set = '1' THEN
--        q <= d;
--       END IF;
--   END PROCESS;    

---------------------
-- Flip-Flop
---------------------
-- ASSINCRONO
--

--PROCESS (clk)
--BEGIN
--   IF clk'EVENT AND clk='1' THEN  
--      IF rst='1' THEN   
--         q <= '0';
--      ELSIF set = '1' THEN
--         q <= '1';
--      ELSE 
--         q <= d;
--      END IF;
--   END IF;
--END PROCESS;

PROCESS(clk, rst)
BEGIN
   IF rst = '1' THEN
      q <= '0';
   ELSIF RISING_EDGE(clk) THEN  
      IF set = '1' THEN
         q <= '1';
      ELSE 
         q <= d;
      END IF;
   END IF;
END PROCESS;

END bhv;