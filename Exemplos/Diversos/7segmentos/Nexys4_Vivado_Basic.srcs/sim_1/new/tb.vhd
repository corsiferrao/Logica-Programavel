------------------------------------------------------------------------------
-- Title      : controlador_7s  
-- Project    : Aula 1
-------------------------------------------------------------------------------
-- File       : toplevel.vhd
-- Author     : Rafael Corsi Ferrao - corsiferrao@gmail.com/ rafael.corsi@maua.br
-- Company    : Instituto Mauá de Tecnologia - NSEE
-- Created    : 29-08-2014
-- Last update: 
-- Platform   : Nexys 4
-- Standard   : VHDL'93/02 
-------------------------------------------------------------------------------
-- Description: Controlador 7 segmentos:
-- TestBench
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb is
end tb;

architecture Behavioral of tb is

component SS_controller is
    generic(
        fclk    : Natural := 100;   -- Mhz
        f7s     : natural := 100    -- Khz
    );
	port(
	   SW 		    : in   STD_LOGIC_VECTOR (15 downto 0);
	   CLK 		    : in   STD_LOGIC;
	   LED 		    : out  STD_LOGIC_VECTOR (15 downto 0);
	   SSEG_CA     	: out  STD_LOGIC_VECTOR (7 downto 0);
	   SSEG_AN 	    : out  STD_LOGIC_VECTOR (7 downto 0)
	);
end component;

    signal clk_100M : std_logic;

begin

    teste_rgb : SS_controller
        generic map(1, 100)
        port map(SW => x"0F0F", CLK => clk_100M);

    clk_100 : process
    begin          
        clk_100M <= '0'; -- Clock de 100 Mhz = T = 1/1E8
        wait for 5 ns;
        clk_100M <= '1';
        wait for 5 ns;           
    end process;

end Behavioral;
