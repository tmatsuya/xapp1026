fpga -f design_1_wrapper.bit
connect arm hw
dow fsbl.elf
dow raw_apps.elf
dow -data image.mfs 0x7200000
run