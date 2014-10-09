------------------------------------------------------------------------------
-- Title      : 05 - VHDL Concorrente
-- Project    : Problemas - Unidade lógica aritmética
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
-- 
--	Implemente uma ALU capaz de realizar as seguintes operações:
--   a)  somar dois vetores;
--   b)  subtrair dois vetores;
--   c)  comparar qual é maior;
--   d)  multiplicar um dos vetores por 2*n vezes.
-- 
-- Utiliza como seletor para as operações os botoes :
-- 
--              BTNU (a)
--
--    (b) BTNL  BTNC ()  BTNR (c)
--
--              BTND (d)
--
-- NOTA:
--      sabemos que a multiplicação binária por 2 é equivalente a rotação
--     do vetor para a esquerda, o mesmo acontece para a divisão (rotacao para
--     direita).
--
--      exemplo: 4*2 = 8 = "0100" << 1 = "1000" = 8
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Início
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;


ENTITY ALU	IS
	PORT ( 
		    SW   : IN  STD_LOGIC_VECTOR(15 downto 0);
		    BTN  : IN  STD_LOGIC_VECTOR(3  downto 0); -- 0 BTNR
		                                              -- 1 BTND
		                                              -- 2 BTNU
		                                              -- 3 BTNL 
		    LED  : OUT STD_LOGIC_VECTOR(15 downto 0)		    
		);
	END ALU;


ARCHITECTURE bhv OF ALU IS

-- Declarações de sinais e constantes

-- Os vetores possuem n=16 elemntos para evitar o
-- overflow, o resultado de uma soma possui o maior
-- tamanho de um dos vetores da soma.
signal vecA : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal vecB : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

BEGIN
	
-------------------------------------------------------------------------------
-- concorrente
-------------------------------------------------------------------------------

    -- Cria vetores auxiliares, do tipo unsigned
    vecA(7 downto 0) <= (SW(7  downto 0));
    vecB(7 downto 0) <= (SW(15 downto 8));

    LED <= vecA + vecB     WHEN BTN(2) = '1'                 ELSE
           vecA - vecB     WHEN BTN(3) = '1'                 ELSE
           (others => '1') WHEN BTN(0) = '1' AND vecA > vecB ELSE
           (others => '0') WHEN BTN(0) = '1'                 ELSE
           std_logic_vector(unsigned(vecA) sll to_integer(unsigned(vecB)));

                
END bhv;
-------------------------------------------------------------------------------
-- FIM
-------------------------------------------------------------------------------
