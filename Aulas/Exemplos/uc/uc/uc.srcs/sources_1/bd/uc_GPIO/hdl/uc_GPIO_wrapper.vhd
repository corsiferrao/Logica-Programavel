--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
--Date        : Mon Nov 23 13:17:07 2015
--Host        : rafa_arch running 64-bit unknown
--Command     : generate_target uc_GPIO_wrapper.bd
--Design      : uc_GPIO_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uc_GPIO_wrapper is
  port (
    clk_in1 : in STD_LOGIC;
    gpio_led_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_sw_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    reset_rtl : in STD_LOGIC
  );
end uc_GPIO_wrapper;

architecture STRUCTURE of uc_GPIO_wrapper is
  component uc_GPIO is
  port (
    clk_in1 : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    gpio_LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_SW_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC
  );
  end component uc_GPIO;
begin
uc_GPIO_i: component uc_GPIO
     port map (
      clk_in1 => clk_in1,
      gpio_LED_tri_o(15 downto 0) => gpio_led_tri_o(15 downto 0),
      gpio_SW_tri_i(15 downto 0) => gpio_sw_tri_i(15 downto 0),
      reset => reset,
      reset_rtl => reset_rtl
    );
end STRUCTURE;
