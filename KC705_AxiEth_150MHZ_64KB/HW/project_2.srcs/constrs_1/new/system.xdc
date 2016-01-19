set_property LOC AD11 [ get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL15 [ get_ports sys_clk_n] 
set_property LOC AD12 [ get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [ get_ports sys_clk_p] 
set_property LOC AB7 [ get_ports reset]
set_property IOSTANDARD LVCMOS15 [ get_ports reset]
# additional constraints
#
create_clock -name sys_clk_pin -period "5.0" [get_ports "sys_clk_p"]
# Added for RevC board
set_property slave_banks {32 34} [get_iobanks 33]

create_pblock pblock_i
add_cells_to_pblock pblock_i [get_cells mb_subsystem_i]
resize_pblock pblock_i -add {CLOCKREGION_X0Y0:CLOCKREGION_X0Y3}
resize_pblock pblock_i -add {CLOCKREGION_X1Y0:CLOCKREGION_X1Y3}
