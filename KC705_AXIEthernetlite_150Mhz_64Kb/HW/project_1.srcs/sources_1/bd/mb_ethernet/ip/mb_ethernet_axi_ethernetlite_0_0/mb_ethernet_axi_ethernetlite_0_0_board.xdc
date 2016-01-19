#--------------------Physical Constraints-----------------

set_property BOARD_PIN {mii_rx_er} [get_ports phy_rx_er]
set_property BOARD_PIN {mii_crs} [get_ports phy_crs]
set_property BOARD_PIN {mii_tx_en} [get_ports phy_tx_en]
set_property BOARD_PIN {mii_tx_clk} [get_ports phy_tx_clk]
set_property BOARD_PIN {mii_rxd[0]} [get_ports phy_rx_data[0]]

set_property BOARD_PIN {mii_rxd[1]} [get_ports phy_rx_data[1]]

set_property BOARD_PIN {mii_rxd[2]} [get_ports phy_rx_data[2]]

set_property BOARD_PIN {mii_rxd[3]} [get_ports phy_rx_data[3]]

set_property BOARD_PIN {mii_rx_dv} [get_ports phy_dv]
set_property BOARD_PIN {mii_phy_rst_n} [get_ports phy_rst_n]
set_property BOARD_PIN {mii_col} [get_ports phy_col]
set_property BOARD_PIN {mii_txd[0]} [get_ports phy_tx_data[0]]

set_property BOARD_PIN {mii_txd[1]} [get_ports phy_tx_data[1]]

set_property BOARD_PIN {mii_txd[2]} [get_ports phy_tx_data[2]]

set_property BOARD_PIN {mii_txd[3]} [get_ports phy_tx_data[3]]

set_property BOARD_PIN {mii_rx_clk} [get_ports phy_rx_clk]
set_property BOARD_PIN {mdio_t} [get_ports phy_mdio_t]
set_property BOARD_PIN {mdc} [get_ports phy_mdc]
