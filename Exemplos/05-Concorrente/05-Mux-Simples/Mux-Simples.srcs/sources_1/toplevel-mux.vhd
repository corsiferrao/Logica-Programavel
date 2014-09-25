------------------------------------------------------------------------------
-- Title      : Exemplo MUx
-- Project    : Aula lógica digital
-------------------------------------------------------------------------------
-- File       : toplevel_mux.vhd
-- Author     : Rafael Corsi Ferrao - corsiferrao@gmail.com/ rafael.corsi@maua.br
-- Company    : Instituto Mauá de Tecnologia - NSEE
-- Created    : 29-8-2014
-- Last update:
-- Platform   : Ubuntu -> Nexys 4
-- Standard   : VHDL'93/02 
-------------------------------------------------------------------------------
--  Mux simples
--
--
-- Esse exemplo implementar um mux com as chaves das placa
-- As chaves S4 e S3 formam o endereço de entrada e as chaves S2,S1 E S0 são as
-- entradas do mux, O led 0 é a saída
--				        ---------
--		S0 --> In0  --> |	    | --> dout --> LED 0
--		S1 --> In1  -->	|  MUX	| 
--		S2 --> In2  -->	|	    |
--		        		|	    |		
--[S4, S3] --> Addr --> |	    |
--				        ---------
-- NOTA:
-- Importante notar que a expressao WHEN ELSE prioriza a saída, diferente
-- da expressao WITH SELECT. 
--
-------------------------------------------------------------------------------
-- Início
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY toplevelmux	IS
	PORT ( 
		    in0   : IN  STD_LOGIC;
		    in1   : IN  STD_LOGIC;
		    in2   : IN  STD_LOGIC;
		    addr  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		    dout  : OUT STD_LOGIC
		);
	END toplevelmux;


ARCHITECTURE bhv OF toplevelmux IS
-- Declarações de sinais e constantes

BEGIN
	
-------------------------------------------------------------------------------
-- concorrente
-------------------------------------------------------------------------------

    ----------------
    -- WITH SELECT
    ----------------
    -- a partir do endereço (addr) a saída (dout) recebe uma das entradas (inx)
    ----------------
--    WITH addr SELECT	
--        dout  <=  in0 WHEN "00",
--                  in1 WHEN "01",
--                  in2 WHEN OTHERS;

    ----------------
    -- WHEN ELSE
    ----------------
    -- a partir do endereço (addr) a saída (dout) recebe uma das entradas (inx)
    ----------------
        dout  <=  in0 WHEN addr = "00" ELSE
                  in1 WHEN addr = "00" ELSE
                  in2;              
END bhv;
-------------------------------------------------------------------------------
-- FIM
-------------------------------------------------------------------------------
