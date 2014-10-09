## Switches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = in0
set_property PACKAGE_PIN U9 [get_ports in0]
	set_property IOSTANDARD LVCMOS33 [get_ports {in0}]

#Bank = 34, Pin name = IO_25_34,							Sch name = in1
set_property PACKAGE_PIN U8 [get_ports {in1}]	
	set_property IOSTANDARD LVCMOS33 [get_ports {in1}]
	
#Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = in2
set_property PACKAGE_PIN R7 [get_ports {in2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {in2}]
	
#Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property PACKAGE_PIN R6 [get_ports {addr[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {addr[0]}]	
	
#Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
set_property PACKAGE_PIN R5 [get_ports {addr[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {addr[1]}]

## LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {dout}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {dout}]


	
