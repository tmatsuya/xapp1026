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

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  debug::add_scope template.lib 1
  create_project -in_memory -part xc7k325tffg900-2
  set_property board_part xilinx.com:kc705:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Design_checkkc705/project_1/project_1.cache/wt [current_project]
  set_property parent.project_path C:/Design_checkkc705/project_1/project_1.xpr [current_project]
  set_property ip_repo_paths c:/Design_checkkc705/project_1/project_1.cache/ip [current_project]
  set_property ip_output_repo c:/Design_checkkc705/project_1/project_1.cache/ip [current_project]
  add_files -quiet C:/Design_checkkc705/project_1/project_1.runs/synth_1/mb_ethernet_wrapper.dcp
  add_files C:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/mb_ethernet.bmm
  set_property SCOPED_TO_REF mb_ethernet [get_files -all C:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/mb_ethernet.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all C:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/mb_ethernet.bmm]
  add_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/4853bf7a/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF mb_ethernet [get_files -all c:/Design_checkkc705/project_1/project_1.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/4853bf7a/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Design_checkkc705/project_1/project_1.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/4853bf7a/data/mb_bootloop_le.elf]
  read_xdc -ref mb_ethernet_microblaze_0_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_microblaze_0_0/mb_ethernet_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_microblaze_0_0/mb_ethernet_microblaze_0_0.xdc]
  read_xdc -ref mb_ethernet_mig_7series_0_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_mig_7series_0_0/mb_ethernet_mig_7series_0_0/user_design/constraints/mb_ethernet_mig_7series_0_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_mig_7series_0_0/mb_ethernet_mig_7series_0_0/user_design/constraints/mb_ethernet_mig_7series_0_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_ethernet_mig_7series_0_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_mig_7series_0_0/mb_ethernet_mig_7series_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_mig_7series_0_0/mb_ethernet_mig_7series_0_0_board.xdc]
  read_xdc -ref mb_ethernet_dlmb_v10_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_dlmb_v10_0/mb_ethernet_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_dlmb_v10_0/mb_ethernet_dlmb_v10_0.xdc]
  read_xdc -ref mb_ethernet_ilmb_v10_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_ilmb_v10_0/mb_ethernet_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_ilmb_v10_0/mb_ethernet_ilmb_v10_0.xdc]
  read_xdc -ref mb_ethernet_microblaze_0_axi_intc_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_microblaze_0_axi_intc_0/mb_ethernet_microblaze_0_axi_intc_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_microblaze_0_axi_intc_0/mb_ethernet_microblaze_0_axi_intc_0.xdc]
  read_xdc -ref mb_ethernet_mdm_1_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_mdm_1_0/mb_ethernet_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_mdm_1_0/mb_ethernet_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_ethernet_rst_mig_7series_0_100M_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_rst_mig_7series_0_100M_0/mb_ethernet_rst_mig_7series_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_rst_mig_7series_0_100M_0/mb_ethernet_rst_mig_7series_0_100M_0_board.xdc]
  read_xdc -ref mb_ethernet_rst_mig_7series_0_100M_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_rst_mig_7series_0_100M_0/mb_ethernet_rst_mig_7series_0_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_rst_mig_7series_0_100M_0/mb_ethernet_rst_mig_7series_0_100M_0.xdc]
  read_xdc -ref mb_ethernet_axi_timer_0_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_timer_0_0/mb_ethernet_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_timer_0_0/mb_ethernet_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_ethernet_axi_uartlite_0_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_uartlite_0_0/mb_ethernet_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_uartlite_0_0/mb_ethernet_axi_uartlite_0_0_board.xdc]
  read_xdc -ref mb_ethernet_axi_uartlite_0_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_uartlite_0_0/mb_ethernet_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_uartlite_0_0/mb_ethernet_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_ethernet_axi_ethernetlite_0_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_ethernetlite_0_0/mb_ethernet_axi_ethernetlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_ethernetlite_0_0/mb_ethernet_axi_ethernetlite_0_0_board.xdc]
  read_xdc -ref mb_ethernet_axi_ethernetlite_0_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_ethernetlite_0_0/mb_ethernet_axi_ethernetlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_ethernetlite_0_0/mb_ethernet_axi_ethernetlite_0_0.xdc]
  read_xdc C:/Design_checkkc705/project_1/project_1.srcs/constrs_1/new/system.xdc
  read_xdc -ref mb_ethernet_microblaze_0_axi_intc_0 -cells U0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_microblaze_0_axi_intc_0/mb_ethernet_microblaze_0_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_microblaze_0_axi_intc_0/mb_ethernet_microblaze_0_axi_intc_0_clocks.xdc]
  read_xdc -ref mb_ethernet_axi_ethernetlite_0_0 c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_ethernetlite_0_0/mb_ethernet_axi_ethernetlite_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_axi_ethernetlite_0_0/mb_ethernet_axi_ethernetlite_0_0_clocks.xdc]
  read_xdc -ref mb_ethernet_auto_ds_0 -cells inst c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_auto_ds_0/mb_ethernet_auto_ds_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_auto_ds_0/mb_ethernet_auto_ds_0_clocks.xdc]
  read_xdc -ref mb_ethernet_auto_us_df_0 -cells inst c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_auto_us_df_0/mb_ethernet_auto_us_df_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_auto_us_df_0/mb_ethernet_auto_us_df_0_clocks.xdc]
  read_xdc -ref mb_ethernet_auto_us_df_1 -cells inst c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_auto_us_df_1/mb_ethernet_auto_us_df_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Design_checkkc705/project_1/project_1.srcs/sources_1/bd/mb_ethernet/ip/mb_ethernet_auto_us_df_1/mb_ethernet_auto_us_df_1_clocks.xdc]
  link_design -top mb_ethernet_wrapper -part xc7k325tffg900-2
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
  opt_design 
  write_checkpoint -force mb_ethernet_wrapper_opt.dcp
  catch {report_drc -file mb_ethernet_wrapper_drc_opted.rpt}
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
  write_checkpoint -force mb_ethernet_wrapper_placed.dcp
  catch { report_io -file mb_ethernet_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file mb_ethernet_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file mb_ethernet_wrapper_utilization_placed.rpt -pb mb_ethernet_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file mb_ethernet_wrapper_control_sets_placed.rpt }
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
  write_checkpoint -force mb_ethernet_wrapper_routed.dcp
  catch { report_drc -file mb_ethernet_wrapper_drc_routed.rpt -pb mb_ethernet_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file mb_ethernet_wrapper_timing_summary_routed.rpt -rpx mb_ethernet_wrapper_timing_summary_routed.rpx }
  catch { report_power -file mb_ethernet_wrapper_power_routed.rpt -pb mb_ethernet_wrapper_power_summary_routed.pb }
  catch { report_route_status -file mb_ethernet_wrapper_route_status.rpt -pb mb_ethernet_wrapper_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force mb_ethernet_wrapper.mmi }
  catch { write_bmm -force mb_ethernet_wrapper_bd.bmm }
  write_bitstream -force mb_ethernet_wrapper.bit 
  if { [file exists C:/Design_checkkc705/project_1/project_1.runs/synth_1/mb_ethernet_wrapper.hwdef] } {
    catch { write_sysdef -hwdef C:/Design_checkkc705/project_1/project_1.runs/synth_1/mb_ethernet_wrapper.hwdef -bitfile mb_ethernet_wrapper.bit -meminfo mb_ethernet_wrapper.mmi -file mb_ethernet_wrapper.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

