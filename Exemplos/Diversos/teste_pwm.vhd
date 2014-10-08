-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity teste_pwm is

	generic
	(
		PWM_CLK_IN  : integer := 10; --Mhz
		PWM_CLK_OUT : integer := 10 --Khz
	);
	port 
	(
		-- Entradas gerais
		CLK_IN : in std_logic;
		RST_IN : in std_logic;
		
		-- Entradas de controle
		PWM_DUTY_on : in integer range 0 to 100; -- on time
		
		-- Sáidas PWM
		PWM_OUT  : out std_logic
		
	);

end entity;

architecture rtl of teste_pwm is
	
	
	constant pwm_pulso_total   : integer := PWM_CLK_IN*1000/PWM_CLK_OUT; -- Indica o numero total de pulsos
	constant pwm_pulso_unidade : integer := pwm_pulso_total/100;		 -- Indica o número de pulsos em 1%

	signal pwm_on, pwm_off	   : integer range 0 to 100 := 0;	-- Indica a quantidade de pulsos 
	signal cnt_low, cnt_hig	   : integer range 0 to 100 := 0;	-- Conta a quandidade de pulsos
	
	signal cnt_pulso		   : integer range 0 to pwm_pulso_unidade := 0; -- Conta a quantidade de pulsos para 1%
	
	-- Build an enumerated type for the state machine
	type state_type is (s_rst, s_low, s_hig);	-- Estados

	-- Register to hold the current state
	signal state_pwm  : state_type;
	
	
begin

	process(CLK_IN) 
	begin
		if (RST_IN = '1') then
			state_pwm <= s_rst;
		elsif (rising_edge(CLK_IN)) then
			
			case state_pwm is
				when s_rst => 
					if (RST_IN = '0') then
					
						state_pwm <= s_low;
						
						pwm_on  <= PWM_DUTY_on;
						pwm_off <= 100 - PWM_DUTY_on;
						
						cnt_pulso <= 0;						
						cnt_low	  <= 0;
						cnt_hig	  <= 0;
						
					else
						state_pwm <= s_rst;
					end if;

				when s_low => 
					
					if(cnt_low <= pwm_off) then
						if( cnt_pulso < pwm_pulso_unidade) then
							cnt_pulso <= cnt_pulso + 1;
						else
							cnt_pulso <= 0;
							cnt_low   <= cnt_low + 1;
						end if;
						
						state_pwm <= s_low;
					else
						state_pwm <= s_hig;
						
						cnt_hig   <= 0;
						cnt_low   <= 0;
						cnt_pulso <= 0;
					end if;

				when s_hig => 
	
					if(cnt_hig <= pwm_on) then
						if( cnt_pulso < pwm_pulso_unidade) then
							cnt_pulso <= cnt_pulso + 1;
						else
							cnt_pulso <= 0;
							cnt_hig   <= cnt_hig + 1;
						end if;
						
						state_pwm <= s_hig;
					else
						state_pwm <= s_low;
						
						cnt_hig   <= 0;
						cnt_low   <= 0;
						cnt_pulso <= 0;
					end if;
					
				when others =>
					cnt_hig   <= 0;
					cnt_low   <= 0;
					cnt_pulso <= 0;	
					state_pwm <= s_rst;

			end case;		
		end if;
	end process;
	
	-- Output depends solely on the current state
	process (state_pwm)
	begin
		case state_pwm is
			when s_rst =>
				PWM_OUT <= '0';
			when s_low =>
				PWM_OUT <= '0';
			when s_hig =>
				PWM_OUT <= '1';
			when others =>
				PWM_OUT <= '0';
		end case;
	end process;

	
end rtl;