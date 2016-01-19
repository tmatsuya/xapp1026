
################################################################################
##### Clock definations 
################################################################################
create_clock -name s_axi_aclk       -period  10 [get_ports S_AXI_ACLK      ]
create_clock -name AXI_STR_TXD_ACLK -period 6.6 [get_ports AXI_STR_TXD_ACLK]
create_clock -name AXI_STR_TXC_ACLK -period 6.6 [get_ports AXI_STR_TXC_ACLK]
create_clock -name AXI_STR_RXD_ACLK -period 6.6 [get_ports AXI_STR_RXD_ACLK]
create_clock -name AXI_STR_RXS_ACLK -period 6.6 [get_ports AXI_STR_RXS_ACLK]
create_clock -name rx_mac_aclk      -period   8 [get_ports rx_mac_aclk     ]
create_clock -name tx_mac_aclk      -period   8 [get_ports tx_mac_aclk     ]
create_clock -name GTX_CLK          -period   8 [get_ports GTX_CLK         ]
################################################################################





