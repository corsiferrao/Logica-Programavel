------------------------------------------------------------------------------
-- Title      : 05 - VHDL Concorrente
-- Project    : Problemas
-------------------------------------------------------------------------------
-- File       : concorrente.vhd
-- Author     : Rafael Corsi Ferrao - corsiferrao@gmail.com/ rafael.corsi@maua.br
-- Company    : Instituto Mauá de Tecnologia - NSEE
-- Created    : set-2014
-- Last update:
-- Platform   : Ubuntu -> Nexys 4
-- Standard   : VHDL'93/02 
-------------------------------------------------------------------------------
-- Descrição
-- Exemplo de conversões de dados
------------------------------------------------------------------------------
-- Início
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

ENTITY Conversoes IS
END Conversoes;


ARCHITECTURE bhv OF Conversoes IS

-- Declarações de sinais e constantes
signal slv : std_logic_vector(7 downto 0);
signal s   : signed(7 downto 0);
signal us  : unsigned(7 downto 0);
signal i   : integer range 0 to 12;

BEGIN

-- Signed 
--slv <= std_logic_vector(s);
--us  <= unsigned(s);
--i   <= to_integer(s);

-- std_logic_vector
--s  <= signed(slv);
--us <= unsigned(slv);
--i  <= to_integer(signed(slv));

-- unsigned
--slv <= std_logic_vector(us);
--s   <= signed(us);
--i   <= to_integer(us);

-- integer
slv <= std_logic_vector(to_signed(i,8));
s   <= to_signed(i,8);
us  <= to_unsigned(i, 8);
                
END bhv;
-------------------------------------------------------------------------------
-- FIM
-------------------------------------------------------------------------------
