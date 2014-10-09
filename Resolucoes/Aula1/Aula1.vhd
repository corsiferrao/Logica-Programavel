----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2014 20:49:57
-- Design Name: 
-- Module Name: aula1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aula1 is
    Port ( led0 : out STD_LOGIC;
           led1 : out STD_LOGIC;
           led2 : out STD_LOGIC;
           chave0 : in STD_LOGIC;
           chave1 : in STD_LOGIC;
           chave2 : in STD_LOGIC);
end aula1;

architecture Behavioral of aula1 is

begin

led0 <= chave0;
led1 <= NOT chave1;
led2 <= chave2 AND chave1;


end Behavioral;
