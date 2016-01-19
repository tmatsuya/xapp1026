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
  set_property board_part xilinx.com:kc705:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.cache/wt [current_project]
  set_property parent.project_path C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.xpr [current_project]
  set_property ip_repo_paths c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.cache/ip [current_project]
  set_property ip_output_repo c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.cache/ip [current_project]
  add_files -quiet C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.runs/synth_1/mb_subsystem_wrapper.dcp
  add_files C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/mb_subsystem.bmm
  set_property SCOPED_TO_REF mb_subsystem [get_files -all C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/mb_subsystem.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/mb_subsystem.bmm]
  add_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/4853bf7a/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF mb_subsystem [get_files -all c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/4853bf7a/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/4853bf7a/data/mb_bootloop_le.elf]
  read_xdc -ref mb_subsystem_microblaze_0_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_microblaze_0_0/mb_subsystem_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_microblaze_0_0/mb_subsystem_microblaze_0_0.xdc]
  read_xdc -ref mb_subsystem_mig_7series_0_0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_mig_7series_0_0/mb_subsystem_mig_7series_0_0/user_design/constraints/mb_subsystem_mig_7series_0_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_mig_7series_0_0/mb_subsystem_mig_7series_0_0/user_design/constraints/mb_subsystem_mig_7series_0_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_subsystem_mig_7series_0_0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_mig_7series_0_0/mb_subsystem_mig_7series_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_mig_7series_0_0/mb_subsystem_mig_7series_0_0_board.xdc]
  read_xdc -ref mb_subsystem_dlmb_v10_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_dlmb_v10_0/mb_subsystem_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_dlmb_v10_0/mb_subsystem_dlmb_v10_0.xdc]
  read_xdc -ref mb_subsystem_ilmb_v10_1 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_ilmb_v10_1/mb_subsystem_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_ilmb_v10_1/mb_subsystem_ilmb_v10_1.xdc]
  read_xdc -ref mb_subsystem_microblaze_0_axi_intc_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_microblaze_0_axi_intc_0/mb_subsystem_microblaze_0_axi_intc_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_microblaze_0_axi_intc_0/mb_subsystem_microblaze_0_axi_intc_0.xdc]
  read_xdc -ref mb_subsystem_mdm_1_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_mdm_1_0/mb_subsystem_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_mdm_1_0/mb_subsystem_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_subsystem_proc_sys_reset_1_0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_proc_sys_reset_1_0/mb_subsystem_proc_sys_reset_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_proc_sys_reset_1_0/mb_subsystem_proc_sys_reset_1_0_board.xdc]
  read_xdc -ref mb_subsystem_proc_sys_reset_1_0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_proc_sys_reset_1_0/mb_subsystem_proc_sys_reset_1_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_proc_sys_reset_1_0/mb_subsystem_proc_sys_reset_1_0.xdc]
  read_xdc -ref mb_subsystem_axi_timer_0_0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_timer_0_0/mb_subsystem_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_timer_0_0/mb_subsystem_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_subsystem_axi_uartlite_0_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_uartlite_0_0/mb_subsystem_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_uartlite_0_0/mb_subsystem_axi_uartlite_0_0_board.xdc]
  read_xdc -ref mb_subsystem_axi_uartlite_0_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_uartlite_0_0/mb_subsystem_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_uartlite_0_0/mb_subsystem_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_0_eth_buf_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_0/bd_0_eth_buf_0_board.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_0/bd_0_eth_buf_0_board.xdc]
  read_xdc -prop_thru_buffers -ref bd_0_eth_mac_0 -cells inst c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_board.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_board.xdc]
  read_xdc -ref bd_0_eth_mac_0 -cells inst c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0.xdc]
  read_xdc -ref mb_subsystem_axi_ethernet_0_dma_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_dma_0/mb_subsystem_axi_ethernet_0_dma_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_dma_0/mb_subsystem_axi_ethernet_0_dma_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_subsystem_clk_wiz_0_0 -cells inst c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_clk_wiz_0_0/mb_subsystem_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_clk_wiz_0_0/mb_subsystem_clk_wiz_0_0_board.xdc]
  read_xdc -ref mb_subsystem_clk_wiz_0_0 -cells inst c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_clk_wiz_0_0/mb_subsystem_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_clk_wiz_0_0/mb_subsystem_clk_wiz_0_0.xdc]
  read_xdc C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/constrs_1/new/system.xdc
  read_xdc -ref mb_subsystem_microblaze_0_axi_intc_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_microblaze_0_axi_intc_0/mb_subsystem_microblaze_0_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_microblaze_0_axi_intc_0/mb_subsystem_microblaze_0_axi_intc_0_clocks.xdc]
  read_xdc -ref bd_0_eth_buf_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_0_eth_buf_0.xdc
  set_property processing_order LATE [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_0_eth_buf_0.xdc]
  read_xdc -ref bd_0_eth_mac_0 -cells inst c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_clocks.xdc
  set_property processing_order LATE [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_clocks.xdc]
  read_xdc -ref mb_subsystem_axi_ethernet_0_dma_0 -cells U0 c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_dma_0/mb_subsystem_axi_ethernet_0_dma_0_clocks.xdc
  set_property processing_order LATE [get_files c:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.srcs/sources_1/bd/mb_subsystem/ip/mb_subsystem_axi_ethernet_0_dma_0/mb_subsystem_axi_ethernet_0_dma_0_clocks.xdc]
  link_design -top mb_subsystem_wrapper -part xc7k325tffg900-2
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
  write_checkpoint -force mb_subsystem_wrapper_opt.dcp
  catch {report_drc -file mb_subsystem_wrapper_drc_opted.rpt}
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
  write_checkpoint -force mb_subsystem_wrapper_placed.dcp
  catch { report_io -file mb_subsystem_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file mb_subsystem_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file mb_subsystem_wrapper_utilization_placed.rpt -pb mb_subsystem_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file mb_subsystem_wrapper_control_sets_placed.rpt }
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
  write_checkpoint -force mb_subsystem_wrapper_routed.dcp
  catch { report_drc -file mb_subsystem_wrapper_drc_routed.rpt -pb mb_subsystem_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file mb_subsystem_wrapper_timing_summary_routed.rpt -rpx mb_subsystem_wrapper_timing_summary_routed.rpx }
  catch { report_power -file mb_subsystem_wrapper_power_routed.rpt -pb mb_subsystem_wrapper_power_summary_routed.pb }
  catch { report_route_status -file mb_subsystem_wrapper_route_status.rpt -pb mb_subsystem_wrapper_route_status.pb }
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
  catch { write_mem_info -force mb_subsystem_wrapper.mmi }
  catch { write_bmm -force mb_subsystem_wrapper_bd.bmm }
  write_bitstream -force mb_subsystem_wrapper.bit 
  if { [file exists C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.runs/synth_1/mb_subsystem_wrapper.hwdef] } {
    catch { write_sysdef -hwdef C:/PROJECT_FOR_RELEASE/KC705_150MHZ_64KB/project_150MHz/project_2.runs/synth_1/mb_subsystem_wrapper.hwdef -bitfile mb_subsystem_wrapper.bit -meminfo mb_subsystem_wrapper.mmi -file mb_subsystem_wrapper.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

