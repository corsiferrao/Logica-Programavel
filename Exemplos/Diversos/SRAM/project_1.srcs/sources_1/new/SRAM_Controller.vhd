-- Todo: Freq. máxima de acesso a memoria é 10Mhz -> Confirmar
-- READ
--      tavh: Address access time                       : 70 ns
--      taa : Address hold                              : 2  ns
--      thz : Chip disable to DQ and WAIT High-Z output : 8  ns
--      trc : READ cycle time                           : 70 ns
--      tlz : Chip enable to Low-Z output               : 10 ns
--      tblz: LB#/UB# enable to Low-Z output            : 10 ns
--
-- Ciclo 1
-- RamWEn  -> 0    (trc + thz)
-- RamADVn -> 0    (trc + thz)
-- RamAdr  -> End. (trc) 
--      
-- Ciclo 2
-- CE (pulso e vai para zero)
-- 
-- Lb/Ub   -> 0    (trc + thz)
--
-- Ciclo 3 (espera tblz)
-- OE      -> 0    
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use mem_pkg.ALL;

entity SRAM_Controller is
    Generic (
           F_CLK_IN : integer := 100 --Mhz := 0.01 ns
    );
    Port ( 
           Clk     : in    std_logic;
           Rst     : in    std_logic;
           
           CtrRwn  : in    std_logic; -- Control Read/Writen
           CtrEn   : in    std_logic; 
           CtrRdy  : out   std_logic;
           CtrDb   : inout std_logic_vector(15 downto 0);
           CtrAdr  : in    std_logic_vector(22 downto 0);
           
	       RamCLK  : out   std_logic;
	       RamADVn : out   std_logic;
	       RamCEn  : out   std_logic;
	       RamCRE  : out   std_logic;
	       RamOEn  : out   std_logic;
	       RamWEn  : out   std_logic;
	       RamLBn  : out   std_logic;
           RamUBn  : out   std_logic;
	       RamWait : in    std_logic;
           MemDb   : inout std_logic_vector(15 downto 0);
           MemAdr  : out   std_logic_vector(22 downto 0)
         );
end SRAM_Controller;

architecture Behavioral of SRAM_Controller is

type state_type is (st_r1, st_r2); 
signal state, next_state : state_type; 

begin

end Behavioral;
