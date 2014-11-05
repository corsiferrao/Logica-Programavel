library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity toplevel is
    port (
            CLK : in std_logic;
            rst : in std_logic;
            
            botao : in  std_logic;
            led   : out std_logic_vector(7 downto 0));
          
end toplevel;

architecture rtl of toplevel is

component ram is
    port (CLK : in std_logic;
          WE  : in std_logic;
          A   : in std_logic_vector(5 downto 0);
          DI  : in std_logic_vector(15 downto 0);
          DO  : out std_logic_vector(15 downto 0));
end component;

component rom is
	port(
		addr	: in natural range 0 to 255;
		clk		: in std_logic;
		q		: out std_logic_vector(7 downto 0)
	);
end component;    
    
signal rom_addr :  natural range 0 to 255 := 0;
signal rom_q    :  std_logic_vector(7 downto 0);    

signal ram_WE  :  std_logic;
signal ram_A   :  std_logic_vector(5 downto 0);
signal ram_DI  :  std_logic_vector(15 downto 0);
signal ram_DO  :  std_logic_vector(15 downto 0);

begin

rom1 : rom
        port map(
            addr => rom_addr,
            clk  => clk,
            q    => rom_q       
        );
        
ram1 : ram
       port map(
           CLK => clk,
           we  => ram_we,
           A   => ram_a,
           DI  => ram_di,
           DO  => ram_do
       );

end rtl;