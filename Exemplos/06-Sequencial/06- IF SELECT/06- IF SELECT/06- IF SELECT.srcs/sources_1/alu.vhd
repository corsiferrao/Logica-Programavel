library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

ENTITY mux IS
   PORT(
      i0, i1, i2, i3 : IN STD_LOGIC; -- entradas
      s : IN STD_LOGIC_VECTOR(1 downto 0); -- selecao
      o : OUT STD_LOGIC -- saida
   );
END mux;
   
ARCHITECTURE bhv OF mux IS
BEGIN

   PROCESS(i0,i1,i2,i3,s) 
   BEGIN
       IF s = "00" THEN 
          o <= i0;
       ELSIF s="01" THEN
          o <= i1;
       ELSIF s="10" THEN
          o <= i2;
       ELSE
          o <= i3;
       END IF;               
   END PROCESS;    
       
END bhv;