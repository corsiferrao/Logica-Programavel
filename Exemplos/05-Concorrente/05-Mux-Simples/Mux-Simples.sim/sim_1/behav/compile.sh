#!/bin/sh
# Vivado(TM)
# compile.sh: Vivado-generated Script for launching XSim application
# Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
# 
if [ -z "$PATH" ]; then
  PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/bin/lin64:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/bin/lin64
else
  PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/bin/lin64:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/bin/lin64:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=$XILINX/lib/$PLATFORM:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/lib/lin64:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=$XILINX/lib/$PLATFORM:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/lib/lin64:/home/rafael/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

#
# Setup env for Xilinx simulation libraries
#
XILINX_PLANAHEAD=/home/rafael/opt/Xilinx/Vivado/2013.4
export XILINX_PLANAHEAD
ExecStep()
{
   "$@"
   RETVAL=$?
   if [ $RETVAL -ne 0 ]
   then
       exit $RETVAL
   fi
}

ExecStep xelab -m64 --debug typical --relax -L work -L secureip --snapshot tb_behav --prj /home/rafael/Dropbox/Aulas/Pos/2014/Logica_Programavel/Exemplos/7segmentos/source/Nexys4_Vivado_Basic/Nexys4_Vivado_Basic.sim/sim_1/behav/tb.prj   work.tb
