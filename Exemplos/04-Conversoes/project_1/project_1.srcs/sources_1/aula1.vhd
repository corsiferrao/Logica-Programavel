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
-- 
-- Soma dois vetores de 8 bits cada e retorna um vetor de 16 bits, 
-- o valor dos vetores é configurável pelas chaves 0-7 para o vetor A
-- e 8-15 para o vetor B, o resultado é exibido nos LEDs.
--
-- OS vetores de entrada do tipo std_logic_vector devem ser 
-- transfomados para o tipo SINGED ou UNSIGNED para poder
-- serem somados. Porém devemos verificar a condição de
-- "overflow" ou estouro. O resultado de uma soma possui o
-- tamanho do maior vetor que faz parte dessa soma, portanto
-- devemos criar um vetor com 2* o tamanho do vetor que queremos
-- somar para garantir que essa condição não ocorra.
-- 
-- TODO: Arrumar constains
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Início
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;



ENTITY Somador	IS
	PORT ( 
		    SW   : IN  STD_LOGIC_VECTOR(15 downto 0);
		    LED  : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	END Somador;


ARCHITECTURE bhv OF Somador IS

-- Declarações de sinais e constantes

-- Os vetores possuem n=16 elemntos para evitar o
-- overflow, o resultado de uma soma possui o maior
-- tamanho de um dos vetores da soama.
signal vecA : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal vecB : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

BEGIN
	
-------------------------------------------------------------------------------
-- concorrente
-------------------------------------------------------------------------------

    -- Cria vetores auxiliares, do tipo unsigned
    vecA(7 downto 0) <= (SW(7  downto 0));
    vecB(7 downto 0) <= (SW(15 downto 8));

    LED <= vecA + vecB;

                
END bhv;
-------------------------------------------------------------------------------
-- FIM
-------------------------------------------------------------------------------
