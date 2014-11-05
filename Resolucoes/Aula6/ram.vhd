library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ram is
    port (CLK : in std_logic;
          WE  : in std_logic;
          A   : in std_logic_vector(5 downto 0);
          DI  : in std_logic_vector(15 downto 0);
          DO  : out std_logic_vector(15 downto 0));
end ram;

architecture syn of ram is

    type ram_type is array (63 downto 0) of std_logic_vector (15 downto 0);
    signal RAM : ram_type;
    
begin

    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (WE = '1') then
                RAM(conv_integer(A)) <= DI;
            end if;
        end if;
    end process;

    DO <= RAM(conv_integer(A));

end syn;