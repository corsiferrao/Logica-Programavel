proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {Synth 8-2778}  -suppress 
set_msg_config  -id {Common 17-69}  -string {{ERROR: [Common 17-69] Command failed: Synthesis failed - please see the console or run log file for details}}  -suppress 
set_msg_config  -id {Common 17-55}  -string {{CRITICAL WARNING: [Common 17-55] 'set_property' expects at least one object. [/home/rafa/Dropbox/Aulas/Pos/2014/LogicaProgramavel/05-Concorrente/project_1/project_1.srcs/constrs_1/new/Nexys4_Master.xdc:3]}}  -suppress 

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  open_checkpoint {/home/rafa/Dropbox/Aulas/Pos/2014/LogicaProgramavel/Exemplos/06-Sequencial/06- IF SELECT/06- IF SELECT/06- IF SELECT.runs/impl_1/mux.dcp}
  set_property webtalk.parent_dir {/home/rafa/Dropbox/Aulas/Pos/2014/LogicaProgramavel/Exemplos/06-Sequencial/06- IF SELECT/06- IF SELECT/06- IF SELECT.cache/wt} [current_project]
  set_property parent.project_dir {/home/rafa/Dropbox/Aulas/Pos/2014/LogicaProgramavel/Exemplos/06-Sequencial/06- IF SELECT/06- IF SELECT} [current_project]
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  catch {update_ip_catalog -quiet -current_ip_cache {/home/rafa/Dropbox/Aulas/Pos/2014/LogicaProgramavel/Exemplos/06-Sequencial/06- IF SELECT/06- IF SELECT/06- IF SELECT.cache} }
  opt_design 
  write_checkpoint -force mux_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force mux_placed.dcp
  catch { report_io -file mux_io_placed.rpt }
  catch { report_clock_utilization -file mux_clock_utilization_placed.rpt }
  catch { report_utilization -file mux_utilization_placed.rpt -pb mux_utilization_placed.pb }
  catch { report_control_sets -verbose -file mux_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force mux_routed.dcp
  catch { report_drc -file mux_drc_routed.rpt -pb mux_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -file mux_timing_summary_routed.rpt -pb mux_timing_summary_routed.pb }
  catch { report_power -file mux_power_routed.rpt -pb mux_power_summary_routed.pb }
  catch { report_route_status -file mux_route_status.rpt -pb mux_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

