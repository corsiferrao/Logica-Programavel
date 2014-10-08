
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
x
%Your %s license expires in %s day(s)
86*common2"
Implementation2default:default2
132default:defaultZ17-86
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
‘
+Loading parts and site information from %s
36*device2M
9/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/arch.xml2default:defaultZ21-36
ž
!Parsing RTL primitives file [%s]
14*netlist2c
O/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
§
*Finished parsing RTL primitives file [%s]
11*netlist2c
O/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
s
Command: %s
53*	vivadotcl2K
7synth_design -top RGB_controller -part xc7a100tcsg324-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
–
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347
†
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349
s
%Your %s license expires in %s day(s)
86*common2
	Synthesis2default:default2
132default:defaultZ17-86
œ
%s*synth2Œ
xStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 784.227 ; gain = 148.391
2default:default
ª
synthesizing module '%s'638*oasys2"
RGB_controller2default:default2¶
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/RGB_controller.vhd2default:default2
442default:default8@Z8-638
V
%s*synth2G
3	Parameter CLK_in_f bound to: 100 - type: integer 
2default:default
V
%s*synth2G
3	Parameter CLK_7s_f bound to: 400 - type: integer 
2default:default
ò
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
controlador_7s2default:default2´
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/controlador_7s.vhd2default:default2
492default:default2!
Controlador_12default:default2"
controlador_7s2default:default2¶
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/RGB_controller.vhd2default:default2
742default:default8@Z8-3491
º
synthesizing module '%s'638*oasys22
controlador_7s__parameterized02default:default2¶
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/controlador_7s.vhd2default:default2
692default:default8@Z8-638
V
%s*synth2G
3	Parameter CLK_in_f bound to: 100 - type: integer 
2default:default
V
%s*synth2G
3	Parameter CLK_7s_f bound to: 400 - type: integer 
2default:default
Š
default block is never used226*oasys2¶
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/controlador_7s.vhd2default:default2
1472default:default8@Z8-226
õ
%done synthesizing module '%s' (%s#%s)256*oasys22
controlador_7s__parameterized02default:default2
12default:default2
12default:default2¶
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/controlador_7s.vhd2default:default2
692default:default8@Z8-256
å
%done synthesizing module '%s' (%s#%s)256*oasys2"
RGB_controller2default:default2
22default:default2
12default:default2¶
Ÿ/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/sources_1/new/RGB_controller.vhd2default:default2
442default:default8@Z8-256
œ
%s*synth2Œ
xFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 819.047 ; gain = 183.211
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
©
Loading clock regions from %s
13*device2r
^/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/artix7/artix7/xc7a100t/ClockRegion.xml2default:defaultZ21-13
ª
Loading clock buffers from %s
11*device2s
_/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/artix7/artix7/xc7a100t/ClockBuffers.xml2default:defaultZ21-11
§
&Loading clock placement rules from %s
318*place2g
S/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318
¥
)Loading package pin functions from %s...
17*device2c
O/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17
¦
Loading package from %s
16*device2u
a/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/artix7/artix7/xc7a100t/csg324/Package.xml2default:defaultZ21-16
š
Loading io standards from %s
15*device2d
P/home/rafael/opt/Xilinx/Vivado/2013.4/data/./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15
¦
+Loading device configuration modes from %s
14*device2b
N/home/rafael/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14
5

Processing XDC Constraints
244*projectZ1-262
ê
Parsing XDC File [%s]
179*designutils2³
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:defaultZ20-179
¨
No ports matched '%s'.
584*	planAhead2
RGB1_Red2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1152default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1152default:default8@Z17-55
ª
No ports matched '%s'.
584*	planAhead2

RGB1_Green2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1182default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1182default:default8@Z17-55
©
No ports matched '%s'.
584*	planAhead2
	RGB1_Blue2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1212default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1212default:default8@Z17-55
¨
No ports matched '%s'.
584*	planAhead2
RGB2_Red2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1242default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1242default:default8@Z17-55
ª
No ports matched '%s'.
584*	planAhead2

RGB2_Green2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1272default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1272default:default8@Z17-55
©
No ports matched '%s'.
584*	planAhead2
	RGB2_Blue2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1302default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1302default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
BTN[4]2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1942default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1942default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
BTN[2]2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1972default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
1972default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
BTN[3]2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
2002default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
2002default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
BTN[0]2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
2032default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
2032default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
BTN[1]2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
2062default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
2062default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
micClk2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4652default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4652default:default8@Z17-55
§
No ports matched '%s'.
584*	planAhead2
micData2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4682default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4682default:default8@Z17-55
¨
No ports matched '%s'.
584*	planAhead2
micLRSel2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4712default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4712default:default8@Z17-55
¦
No ports matched '%s'.
584*	planAhead2
ampPWM2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4782default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4782default:default8@Z17-55
¥
No ports matched '%s'.
584*	planAhead2
ampSD2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4812default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4812default:default8@Z17-55
¨
No ports matched '%s'.
584*	planAhead2
UART_TXD2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4912default:default8@Z12-584
²
"'%s' expects at least one object.
55*common2 
set_property2default:default2µ
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2
4912default:default8@Z17-55
ó
Finished Parsing XDC File [%s]
178*designutils2³
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:defaultZ20-178
è
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2³
ž/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.srcs/constrs_1/new/Nexys4_Master.xdc2default:default2¼
§/home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.runs/synth_1/.Xil/RGB_controller_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-144
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
¶
%s*synth2¦
‘Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 1060.770 ; gain = 424.934
2default:default
ž
%s*synth2Ž
zFinished RTL Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 1060.770 ; gain = 424.934
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
z
%s*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:default
²
%s*synth2¢
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1131.785 ; gain = 495.949
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   8 Input      4 Bit        Muxes := 1     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
:
%s*synth2+
Module RGB_controller 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
J
%s*synth2;
'Module controlador_7s__parameterized0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   8 Input      4 Bit        Muxes := 1     
2default:default
Ÿ
+design %s has port %s driven by constant %s3447*oasys2"
RGB_controller2default:default2

SSEG_CA[7]2default:default2
12default:defaultZ8-3917
ª
%s*synth2š
…Finished Cross Boundary Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1141.797 ; gain = 505.961
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
Ÿ
%s*synth2
{Finished Area Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:40 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
®
%s*synth2ž
‰Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:40 ; elapsed = 00:00:41 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
¡
%s*synth2‘
}Finished Timing Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:41 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
 
%s*synth2
|Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:00:41 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
D
%s*synth25
!Gated Clock Conversion mode: off
2default:default
š
%s*synth2Š
vFinished IO Insertion : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
«
%s*synth2›
†Finished Renaming Generated Instances : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
¨
%s*synth2˜
ƒFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|      |Cell   |Count |
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|1     |BUFG   |     1|
2default:default
;
%s*synth2,
|2     |CARRY4 |     5|
2default:default
;
%s*synth2,
|3     |LUT1   |    18|
2default:default
;
%s*synth2,
|4     |LUT3   |    16|
2default:default
;
%s*synth2,
|5     |LUT4   |     1|
2default:default
;
%s*synth2,
|6     |LUT5   |     3|
2default:default
;
%s*synth2,
|7     |LUT6   |     2|
2default:default
;
%s*synth2,
|8     |FDRE   |    21|
2default:default
;
%s*synth2,
|9     |IBUF   |    17|
2default:default
;
%s*synth2,
|10    |OBUF   |    32|
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
d
%s*synth2U
A+------+----------------+-------------------------------+------+
2default:default
d
%s*synth2U
A|      |Instance        |Module                         |Cells |
2default:default
d
%s*synth2U
A+------+----------------+-------------------------------+------+
2default:default
d
%s*synth2U
A|1     |top             |                               |   116|
2default:default
d
%s*synth2U
A|2     |  Controlador_1 |controlador_7s__parameterized0 |    66|
2default:default
d
%s*synth2U
A+------+----------------+-------------------------------+------+
2default:default
§
%s*synth2—
‚Finished Writing Synthesis Report : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:default
¥
%s*synth2•
€Synthesis Optimization Complete : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 1162.844 ; gain = 527.008
2default:default
]
-Analyzing %s Unisim elements for replacement
17*netlist2
172default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-144
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
192default:default2
182default:default2
172default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:572default:default2
00:00:582default:default2
1522.2662default:default2
791.0352default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35
‚
vreport_utilization: Time (s): cpu = 00:00:00.32 ; elapsed = 00:00:00.40 . Memory (MB): peak = 1524.281 ; gain = 2.012
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Mar  5 01:59:08 20142default:defaultZ17-206