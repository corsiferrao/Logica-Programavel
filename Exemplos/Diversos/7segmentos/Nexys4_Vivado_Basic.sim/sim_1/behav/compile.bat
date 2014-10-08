@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/home/rafa/opt/Xilinx/Vivado/2014.2/ids_lite/ISE/bin/lin64;/home/rafa/opt/Xilinx/Vivado/2014.2/ids_lite/ISE/lib/lin64;/home/rafa/opt/Xilinx/Vivado/2014.2/bin;%PATH%
set XILINX_PLANAHEAD=/home/rafa/opt/Xilinx/Vivado/2014.2

xelab -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_behav --prj /home/rafa/Dropbox/Aulas/Pos/2014/Logica-Programavel/Exemplos/Diversos/7segmentos/Nexys4_Vivado_Basic.sim/sim_1/behav/tb.prj   xil_defaultlib.tb
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
