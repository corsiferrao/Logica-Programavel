@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/bin/lin64:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/bin/lin64;/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/lib/lin64:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/lib/lin64;/home/rafael/opt/Xilinx/Vivado/2013.4/bin;%PATH%
set XILINX_PLANAHEAD=/home/rafael/opt/Xilinx/Vivado/2013.4

xelab -m64 --debug typical --relax -L work -L secureip --snapshot tb_behav --prj /home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.sim/sim_1/behav/tb.prj   work.tb
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)