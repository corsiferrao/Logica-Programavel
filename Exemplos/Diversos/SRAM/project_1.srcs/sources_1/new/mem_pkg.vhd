library ieee;
use ieee.std_logic_1164.all;

package mem_pkg is

type mem_signals is
  record
          CtrRwn  : std_logic; -- Control Read/Writen
          CtrEn   : std_logic; 
          CtrRdy  : std_logic;
          CtrDb   : std_logic_vector(15 downto 0);
          CtrAdr  : std_logic_vector(22 downto 0);
             
          RamCLK  : std_logic;
          RamADVn : std_logic;
          RamCEn  : std_logic;
          RamCRE  : std_logic;
          RamOEn  : std_logic;
          RamWEn  : std_logic;
          RamLBn  : std_logic;
          RamUBn  : std_logic;
          RamWait : std_logic;
 
          MemDb   : std_logic_vector(15 downto 0);
          MemAdr  : std_logic_vector(22 downto 0);
 end record;
 
 end package mem_pkg;