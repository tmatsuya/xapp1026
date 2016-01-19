//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.3 (win64) Build 1018564 Mon Sep 15 19:04:16 MDT 2014
//Date        : Wed Oct 29 16:54:15 2014
//Host        : XHDKATTAD30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target mb_ethernet_wrapper.bd
//Design      : mb_ethernet_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_ethernet_wrapper
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    mdio_mdc_mdc,
    mdio_mdc_mdio_io,
    mii_col,
    mii_crs,
    mii_rst_n,
    mii_rx_clk,
    mii_rx_dv,
    mii_rx_er,
    mii_rxd,
    mii_tx_clk,
    mii_tx_en,
    mii_txd,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd,
    sys_clk_n,
    sys_clk_p);
  output [13:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [0:0]DDR3_cs_n;
  output [7:0]DDR3_dm;
  inout [63:0]DDR3_dq;
  inout [7:0]DDR3_dqs_n;
  inout [7:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  output mdio_mdc_mdc;
  inout mdio_mdc_mdio_io;
  input mii_col;
  input mii_crs;
  output mii_rst_n;
  input mii_rx_clk;
  input mii_rx_dv;
  input mii_rx_er;
  input [3:0]mii_rxd;
  input mii_tx_clk;
  output mii_tx_en;
  output [3:0]mii_txd;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input sys_clk_n;
  input sys_clk_p;

  wire [13:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [0:0]DDR3_cs_n;
  wire [7:0]DDR3_dm;
  wire [63:0]DDR3_dq;
  wire [7:0]DDR3_dqs_n;
  wire [7:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire mdio_mdc_mdc;
  wire mdio_mdc_mdio_i;
  wire mdio_mdc_mdio_io;
  wire mdio_mdc_mdio_o;
  wire mdio_mdc_mdio_t;
  wire mii_col;
  wire mii_crs;
  wire mii_rst_n;
  wire mii_rx_clk;
  wire mii_rx_dv;
  wire mii_rx_er;
  wire [3:0]mii_rxd;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire reset;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire sys_clk_n;
  wire sys_clk_p;

mb_ethernet mb_ethernet_i
       (.DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_cs_n(DDR3_cs_n),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .mdio_mdc_mdc(mdio_mdc_mdc),
        .mdio_mdc_mdio_i(mdio_mdc_mdio_i),
        .mdio_mdc_mdio_o(mdio_mdc_mdio_o),
        .mdio_mdc_mdio_t(mdio_mdc_mdio_t),
        .mii_col(mii_col),
        .mii_crs(mii_crs),
        .mii_rst_n(mii_rst_n),
        .mii_rx_clk(mii_rx_clk),
        .mii_rx_dv(mii_rx_dv),
        .mii_rx_er(mii_rx_er),
        .mii_rxd(mii_rxd),
        .mii_tx_clk(mii_tx_clk),
        .mii_tx_en(mii_tx_en),
        .mii_txd(mii_txd),
        .reset(reset),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .sys_clk_n(sys_clk_n),
        .sys_clk_p(sys_clk_p));
IOBUF mdio_mdc_mdio_iobuf
       (.I(mdio_mdc_mdio_o),
        .IO(mdio_mdc_mdio_io),
        .O(mdio_mdc_mdio_i),
        .T(mdio_mdc_mdio_t));
endmodule
