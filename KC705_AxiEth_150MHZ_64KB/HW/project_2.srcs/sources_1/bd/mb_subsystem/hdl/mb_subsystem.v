//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.3 (win64) Build 1018564 Mon Sep 15 19:04:16 MDT 2014
//Date        : Tue Sep 23 10:57:19 2014
//Host        : XHDKATTAD30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target mb_subsystem.bd
//Design      : mb_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1GJPW6P
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [29:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [29:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire [31:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [1:0]m00_couplers_to_m00_regslice_ARBURST;
  wire [3:0]m00_couplers_to_m00_regslice_ARCACHE;
  wire [2:0]m00_couplers_to_m00_regslice_ARID;
  wire [7:0]m00_couplers_to_m00_regslice_ARLEN;
  wire [0:0]m00_couplers_to_m00_regslice_ARLOCK;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire [3:0]m00_couplers_to_m00_regslice_ARQOS;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire [3:0]m00_couplers_to_m00_regslice_ARREGION;
  wire [2:0]m00_couplers_to_m00_regslice_ARSIZE;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [31:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [1:0]m00_couplers_to_m00_regslice_AWBURST;
  wire [3:0]m00_couplers_to_m00_regslice_AWCACHE;
  wire [2:0]m00_couplers_to_m00_regslice_AWID;
  wire [7:0]m00_couplers_to_m00_regslice_AWLEN;
  wire [0:0]m00_couplers_to_m00_regslice_AWLOCK;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire [3:0]m00_couplers_to_m00_regslice_AWQOS;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire [3:0]m00_couplers_to_m00_regslice_AWREGION;
  wire [2:0]m00_couplers_to_m00_regslice_AWSIZE;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire [2:0]m00_couplers_to_m00_regslice_BID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire [2:0]m00_couplers_to_m00_regslice_RID;
  wire m00_couplers_to_m00_regslice_RLAST;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WLAST;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [2:0]m00_regslice_to_m00_couplers_ARID;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [2:0]m00_regslice_to_m00_couplers_AWID;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [2:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire [2:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[29:0] = m00_regslice_to_m00_couplers_ARADDR[29:0];
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[29:0] = m00_regslice_to_m00_couplers_AWADDR[29:0];
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bid[2:0] = m00_couplers_to_m00_regslice_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rid[2:0] = m00_couplers_to_m00_regslice_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_regslice_ARID = S_AXI_arid[2:0];
  assign m00_couplers_to_m00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_regslice_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_regslice_AWID = S_AXI_awid[2:0];
  assign m00_couplers_to_m00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_regslice_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[2:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[2:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
mb_subsystem_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR),
        .s_axi_arburst(m00_couplers_to_m00_regslice_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_regslice_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_regslice_ARID),
        .s_axi_arlen(m00_couplers_to_m00_regslice_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_regslice_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_regslice_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_regslice_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR),
        .s_axi_awburst(m00_couplers_to_m00_regslice_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_regslice_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_regslice_AWID),
        .s_axi_awlen(m00_couplers_to_m00_regslice_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_regslice_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_regslice_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_regslice_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_regslice_BID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rid(m00_couplers_to_m00_regslice_RID),
        .s_axi_rlast(m00_couplers_to_m00_regslice_RLAST),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_regslice_WLAST),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_RDG37U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [8:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [8:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1B903JL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire [31:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [1:0]m01_couplers_to_m01_regslice_ARBURST;
  wire [3:0]m01_couplers_to_m01_regslice_ARCACHE;
  wire [2:0]m01_couplers_to_m01_regslice_ARID;
  wire [7:0]m01_couplers_to_m01_regslice_ARLEN;
  wire [0:0]m01_couplers_to_m01_regslice_ARLOCK;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire [3:0]m01_couplers_to_m01_regslice_ARQOS;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire [3:0]m01_couplers_to_m01_regslice_ARREGION;
  wire [2:0]m01_couplers_to_m01_regslice_ARSIZE;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [31:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [1:0]m01_couplers_to_m01_regslice_AWBURST;
  wire [3:0]m01_couplers_to_m01_regslice_AWCACHE;
  wire [2:0]m01_couplers_to_m01_regslice_AWID;
  wire [7:0]m01_couplers_to_m01_regslice_AWLEN;
  wire [0:0]m01_couplers_to_m01_regslice_AWLOCK;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire [3:0]m01_couplers_to_m01_regslice_AWQOS;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire [3:0]m01_couplers_to_m01_regslice_AWREGION;
  wire [2:0]m01_couplers_to_m01_regslice_AWSIZE;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire [2:0]m01_couplers_to_m01_regslice_BID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire [2:0]m01_couplers_to_m01_regslice_RID;
  wire m01_couplers_to_m01_regslice_RLAST;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WLAST;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [31:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [1:0]m01_regslice_to_m01_couplers_ARBURST;
  wire [3:0]m01_regslice_to_m01_couplers_ARCACHE;
  wire [2:0]m01_regslice_to_m01_couplers_ARID;
  wire [7:0]m01_regslice_to_m01_couplers_ARLEN;
  wire [0:0]m01_regslice_to_m01_couplers_ARLOCK;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire [2:0]m01_regslice_to_m01_couplers_ARSIZE;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [31:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [1:0]m01_regslice_to_m01_couplers_AWBURST;
  wire [3:0]m01_regslice_to_m01_couplers_AWCACHE;
  wire [2:0]m01_regslice_to_m01_couplers_AWID;
  wire [7:0]m01_regslice_to_m01_couplers_AWLEN;
  wire [0:0]m01_regslice_to_m01_couplers_AWLOCK;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire [2:0]m01_regslice_to_m01_couplers_AWSIZE;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire [2:0]m01_regslice_to_m01_couplers_BID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire [2:0]m01_regslice_to_m01_couplers_RID;
  wire m01_regslice_to_m01_couplers_RLAST;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WLAST;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[15:0] = m01_regslice_to_m01_couplers_ARADDR[15:0];
  assign M_AXI_arburst[1:0] = m01_regslice_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_regslice_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m01_regslice_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_regslice_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = m01_regslice_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m01_regslice_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m01_regslice_to_m01_couplers_AWADDR[15:0];
  assign M_AXI_awburst[1:0] = m01_regslice_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_regslice_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m01_regslice_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_regslice_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = m01_regslice_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m01_regslice_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_regslice_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bid[2:0] = m01_couplers_to_m01_regslice_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rid[2:0] = m01_couplers_to_m01_regslice_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_regslice_ARID = S_AXI_arid[2:0];
  assign m01_couplers_to_m01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_regslice_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_m01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_m01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_regslice_AWID = S_AXI_awid[2:0];
  assign m01_couplers_to_m01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_regslice_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_m01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_m01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BID = M_AXI_bid[2:0];
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RID = M_AXI_rid[2:0];
  assign m01_regslice_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
mb_subsystem_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arburst(m01_regslice_to_m01_couplers_ARBURST),
        .m_axi_arcache(m01_regslice_to_m01_couplers_ARCACHE),
        .m_axi_arid(m01_regslice_to_m01_couplers_ARID),
        .m_axi_arlen(m01_regslice_to_m01_couplers_ARLEN),
        .m_axi_arlock(m01_regslice_to_m01_couplers_ARLOCK),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arsize(m01_regslice_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awburst(m01_regslice_to_m01_couplers_AWBURST),
        .m_axi_awcache(m01_regslice_to_m01_couplers_AWCACHE),
        .m_axi_awid(m01_regslice_to_m01_couplers_AWID),
        .m_axi_awlen(m01_regslice_to_m01_couplers_AWLEN),
        .m_axi_awlock(m01_regslice_to_m01_couplers_AWLOCK),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awsize(m01_regslice_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bid(m01_regslice_to_m01_couplers_BID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rid(m01_regslice_to_m01_couplers_RID),
        .m_axi_rlast(m01_regslice_to_m01_couplers_RLAST),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wlast(m01_regslice_to_m01_couplers_WLAST),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR),
        .s_axi_arburst(m01_couplers_to_m01_regslice_ARBURST),
        .s_axi_arcache(m01_couplers_to_m01_regslice_ARCACHE),
        .s_axi_arid(m01_couplers_to_m01_regslice_ARID),
        .s_axi_arlen(m01_couplers_to_m01_regslice_ARLEN),
        .s_axi_arlock(m01_couplers_to_m01_regslice_ARLOCK),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arqos(m01_couplers_to_m01_regslice_ARQOS),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arregion(m01_couplers_to_m01_regslice_ARREGION),
        .s_axi_arsize(m01_couplers_to_m01_regslice_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR),
        .s_axi_awburst(m01_couplers_to_m01_regslice_AWBURST),
        .s_axi_awcache(m01_couplers_to_m01_regslice_AWCACHE),
        .s_axi_awid(m01_couplers_to_m01_regslice_AWID),
        .s_axi_awlen(m01_couplers_to_m01_regslice_AWLEN),
        .s_axi_awlock(m01_couplers_to_m01_regslice_AWLOCK),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awqos(m01_couplers_to_m01_regslice_AWQOS),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awregion(m01_couplers_to_m01_regslice_AWREGION),
        .s_axi_awsize(m01_couplers_to_m01_regslice_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bid(m01_couplers_to_m01_regslice_BID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rid(m01_couplers_to_m01_regslice_RID),
        .s_axi_rlast(m01_couplers_to_m01_regslice_RLAST),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wlast(m01_couplers_to_m01_regslice_WLAST),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m01_couplers_imp_WMA45M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [4:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [4:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [4:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [4:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [4:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[4:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[4:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[4:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_LCSAMI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [3:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [3:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [3:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [3:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [3:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[3:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[3:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[3:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_PHON4A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [9:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [9:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [9:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [9:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [9:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [9:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[9:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[9:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[9:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[9:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_H7JY2Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [17:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [17:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [17:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [17:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[17:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[17:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "mb_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLanguage=VERILOG,numBlks=48,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=16,maxHierDepth=1}" *) 
module mb_subsystem
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
    gmii_gtx_clk,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_rxd,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_tx_er,
    gmii_txd,
    mdio_io_io,
    mdio_io_mdc,
    phy_reset_out,
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
  output gmii_gtx_clk;
  input gmii_rx_clk;
  input gmii_rx_dv;
  input gmii_rx_er;
  input [7:0]gmii_rxd;
  input gmii_tx_clk;
  output gmii_tx_en;
  output gmii_tx_er;
  output [7:0]gmii_txd;
  inout mdio_io_io;
  output mdio_io_mdc;
  output phy_reset_out;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input sys_clk_n;
  input sys_clk_p;

  wire GND_1;
  wire VCC_1;
  wire [15:0]axi_bram_ctrl_0_bram_porta_ADDR;
  wire axi_bram_ctrl_0_bram_porta_CLK;
  wire [31:0]axi_bram_ctrl_0_bram_porta_DIN;
  wire [31:0]axi_bram_ctrl_0_bram_porta_DOUT;
  wire axi_bram_ctrl_0_bram_porta_EN;
  wire axi_bram_ctrl_0_bram_porta_RST;
  wire [3:0]axi_bram_ctrl_0_bram_porta_WE;
  wire [15:0]axi_bram_ctrl_0_bram_portb_ADDR;
  wire axi_bram_ctrl_0_bram_portb_CLK;
  wire [31:0]axi_bram_ctrl_0_bram_portb_DIN;
  wire [31:0]axi_bram_ctrl_0_bram_portb_DOUT;
  wire axi_bram_ctrl_0_bram_portb_EN;
  wire axi_bram_ctrl_0_bram_portb_RST;
  wire [3:0]axi_bram_ctrl_0_bram_portb_WE;
  wire [31:0]axi_ethernet_0_dma_m_axi_mm2s_ARADDR;
  wire [1:0]axi_ethernet_0_dma_m_axi_mm2s_ARBURST;
  wire [3:0]axi_ethernet_0_dma_m_axi_mm2s_ARCACHE;
  wire [7:0]axi_ethernet_0_dma_m_axi_mm2s_ARLEN;
  wire [2:0]axi_ethernet_0_dma_m_axi_mm2s_ARPROT;
  wire axi_ethernet_0_dma_m_axi_mm2s_ARREADY;
  wire [2:0]axi_ethernet_0_dma_m_axi_mm2s_ARSIZE;
  wire axi_ethernet_0_dma_m_axi_mm2s_ARVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_mm2s_RDATA;
  wire axi_ethernet_0_dma_m_axi_mm2s_RLAST;
  wire axi_ethernet_0_dma_m_axi_mm2s_RREADY;
  wire [1:0]axi_ethernet_0_dma_m_axi_mm2s_RRESP;
  wire axi_ethernet_0_dma_m_axi_mm2s_RVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_s2mm_AWADDR;
  wire [1:0]axi_ethernet_0_dma_m_axi_s2mm_AWBURST;
  wire [3:0]axi_ethernet_0_dma_m_axi_s2mm_AWCACHE;
  wire [7:0]axi_ethernet_0_dma_m_axi_s2mm_AWLEN;
  wire [2:0]axi_ethernet_0_dma_m_axi_s2mm_AWPROT;
  wire axi_ethernet_0_dma_m_axi_s2mm_AWREADY;
  wire [2:0]axi_ethernet_0_dma_m_axi_s2mm_AWSIZE;
  wire axi_ethernet_0_dma_m_axi_s2mm_AWVALID;
  wire axi_ethernet_0_dma_m_axi_s2mm_BREADY;
  wire [1:0]axi_ethernet_0_dma_m_axi_s2mm_BRESP;
  wire axi_ethernet_0_dma_m_axi_s2mm_BVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_s2mm_WDATA;
  wire axi_ethernet_0_dma_m_axi_s2mm_WLAST;
  wire axi_ethernet_0_dma_m_axi_s2mm_WREADY;
  wire [3:0]axi_ethernet_0_dma_m_axi_s2mm_WSTRB;
  wire axi_ethernet_0_dma_m_axi_s2mm_WVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_sg_ARADDR;
  wire [1:0]axi_ethernet_0_dma_m_axi_sg_ARBURST;
  wire [3:0]axi_ethernet_0_dma_m_axi_sg_ARCACHE;
  wire [7:0]axi_ethernet_0_dma_m_axi_sg_ARLEN;
  wire [2:0]axi_ethernet_0_dma_m_axi_sg_ARPROT;
  wire axi_ethernet_0_dma_m_axi_sg_ARREADY;
  wire [2:0]axi_ethernet_0_dma_m_axi_sg_ARSIZE;
  wire axi_ethernet_0_dma_m_axi_sg_ARVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_sg_AWADDR;
  wire [1:0]axi_ethernet_0_dma_m_axi_sg_AWBURST;
  wire [3:0]axi_ethernet_0_dma_m_axi_sg_AWCACHE;
  wire [7:0]axi_ethernet_0_dma_m_axi_sg_AWLEN;
  wire [2:0]axi_ethernet_0_dma_m_axi_sg_AWPROT;
  wire axi_ethernet_0_dma_m_axi_sg_AWREADY;
  wire [2:0]axi_ethernet_0_dma_m_axi_sg_AWSIZE;
  wire axi_ethernet_0_dma_m_axi_sg_AWVALID;
  wire axi_ethernet_0_dma_m_axi_sg_BREADY;
  wire [1:0]axi_ethernet_0_dma_m_axi_sg_BRESP;
  wire axi_ethernet_0_dma_m_axi_sg_BVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_sg_RDATA;
  wire axi_ethernet_0_dma_m_axi_sg_RLAST;
  wire axi_ethernet_0_dma_m_axi_sg_RREADY;
  wire [1:0]axi_ethernet_0_dma_m_axi_sg_RRESP;
  wire axi_ethernet_0_dma_m_axi_sg_RVALID;
  wire [31:0]axi_ethernet_0_dma_m_axi_sg_WDATA;
  wire axi_ethernet_0_dma_m_axi_sg_WLAST;
  wire axi_ethernet_0_dma_m_axi_sg_WREADY;
  wire [3:0]axi_ethernet_0_dma_m_axi_sg_WSTRB;
  wire axi_ethernet_0_dma_m_axi_sg_WVALID;
  wire [31:0]axi_ethernet_0_dma_m_axis_cntrl_TDATA;
  wire [3:0]axi_ethernet_0_dma_m_axis_cntrl_TKEEP;
  wire axi_ethernet_0_dma_m_axis_cntrl_TLAST;
  wire axi_ethernet_0_dma_m_axis_cntrl_TREADY;
  wire axi_ethernet_0_dma_m_axis_cntrl_TVALID;
  wire [31:0]axi_ethernet_0_dma_m_axis_mm2s_TDATA;
  wire [3:0]axi_ethernet_0_dma_m_axis_mm2s_TKEEP;
  wire axi_ethernet_0_dma_m_axis_mm2s_TLAST;
  wire axi_ethernet_0_dma_m_axis_mm2s_TREADY;
  wire axi_ethernet_0_dma_m_axis_mm2s_TVALID;
  wire axi_ethernet_0_dma_mm2s_cntrl_reset_out_n;
  wire axi_ethernet_0_dma_mm2s_introut;
  wire axi_ethernet_0_dma_mm2s_prmry_reset_out_n;
  wire axi_ethernet_0_dma_s2mm_introut;
  wire axi_ethernet_0_dma_s2mm_prmry_reset_out_n;
  wire axi_ethernet_0_dma_s2mm_sts_reset_out_n;
  wire axi_ethernet_0_gmii_GTX_CLK;
  wire [7:0]axi_ethernet_0_gmii_RXD;
  wire axi_ethernet_0_gmii_RX_CLK;
  wire axi_ethernet_0_gmii_RX_DV;
  wire axi_ethernet_0_gmii_RX_ER;
  wire [7:0]axi_ethernet_0_gmii_TXD;
  wire axi_ethernet_0_gmii_TX_CLK;
  wire axi_ethernet_0_gmii_TX_EN;
  wire axi_ethernet_0_gmii_TX_ER;
  wire axi_ethernet_0_interrupt;
  wire [31:0]axi_ethernet_0_m_axis_rxd_TDATA;
  wire [3:0]axi_ethernet_0_m_axis_rxd_TKEEP;
  wire axi_ethernet_0_m_axis_rxd_TLAST;
  wire axi_ethernet_0_m_axis_rxd_TREADY;
  wire axi_ethernet_0_m_axis_rxd_TVALID;
  wire [31:0]axi_ethernet_0_m_axis_rxs_TDATA;
  wire [3:0]axi_ethernet_0_m_axis_rxs_TKEEP;
  wire axi_ethernet_0_m_axis_rxs_TLAST;
  wire axi_ethernet_0_m_axis_rxs_TREADY;
  wire axi_ethernet_0_m_axis_rxs_TVALID;
  wire axi_ethernet_0_mdio_IO;
  wire axi_ethernet_0_mdio_MDC;
  wire axi_ethernet_0_phy_rst_n;
  wire [29:0]axi_mem_intercon_m00_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m00_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m00_axi_ARCACHE;
  wire [2:0]axi_mem_intercon_m00_axi_ARID;
  wire [7:0]axi_mem_intercon_m00_axi_ARLEN;
  wire axi_mem_intercon_m00_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_m00_axi_ARPROT;
  wire [3:0]axi_mem_intercon_m00_axi_ARQOS;
  wire axi_mem_intercon_m00_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m00_axi_ARSIZE;
  wire axi_mem_intercon_m00_axi_ARVALID;
  wire [29:0]axi_mem_intercon_m00_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m00_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m00_axi_AWCACHE;
  wire [2:0]axi_mem_intercon_m00_axi_AWID;
  wire [7:0]axi_mem_intercon_m00_axi_AWLEN;
  wire axi_mem_intercon_m00_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_m00_axi_AWPROT;
  wire [3:0]axi_mem_intercon_m00_axi_AWQOS;
  wire axi_mem_intercon_m00_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m00_axi_AWSIZE;
  wire axi_mem_intercon_m00_axi_AWVALID;
  wire [2:0]axi_mem_intercon_m00_axi_BID;
  wire axi_mem_intercon_m00_axi_BREADY;
  wire [1:0]axi_mem_intercon_m00_axi_BRESP;
  wire axi_mem_intercon_m00_axi_BVALID;
  wire [31:0]axi_mem_intercon_m00_axi_RDATA;
  wire [2:0]axi_mem_intercon_m00_axi_RID;
  wire axi_mem_intercon_m00_axi_RLAST;
  wire axi_mem_intercon_m00_axi_RREADY;
  wire [1:0]axi_mem_intercon_m00_axi_RRESP;
  wire axi_mem_intercon_m00_axi_RVALID;
  wire [31:0]axi_mem_intercon_m00_axi_WDATA;
  wire axi_mem_intercon_m00_axi_WLAST;
  wire axi_mem_intercon_m00_axi_WREADY;
  wire [3:0]axi_mem_intercon_m00_axi_WSTRB;
  wire axi_mem_intercon_m00_axi_WVALID;
  wire [15:0]axi_mem_intercon_m01_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m01_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m01_axi_ARCACHE;
  wire [2:0]axi_mem_intercon_m01_axi_ARID;
  wire [7:0]axi_mem_intercon_m01_axi_ARLEN;
  wire [0:0]axi_mem_intercon_m01_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_m01_axi_ARPROT;
  wire axi_mem_intercon_m01_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m01_axi_ARSIZE;
  wire axi_mem_intercon_m01_axi_ARVALID;
  wire [15:0]axi_mem_intercon_m01_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m01_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m01_axi_AWCACHE;
  wire [2:0]axi_mem_intercon_m01_axi_AWID;
  wire [7:0]axi_mem_intercon_m01_axi_AWLEN;
  wire [0:0]axi_mem_intercon_m01_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_m01_axi_AWPROT;
  wire axi_mem_intercon_m01_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m01_axi_AWSIZE;
  wire axi_mem_intercon_m01_axi_AWVALID;
  wire [2:0]axi_mem_intercon_m01_axi_BID;
  wire axi_mem_intercon_m01_axi_BREADY;
  wire [1:0]axi_mem_intercon_m01_axi_BRESP;
  wire axi_mem_intercon_m01_axi_BVALID;
  wire [31:0]axi_mem_intercon_m01_axi_RDATA;
  wire [2:0]axi_mem_intercon_m01_axi_RID;
  wire axi_mem_intercon_m01_axi_RLAST;
  wire axi_mem_intercon_m01_axi_RREADY;
  wire [1:0]axi_mem_intercon_m01_axi_RRESP;
  wire axi_mem_intercon_m01_axi_RVALID;
  wire [31:0]axi_mem_intercon_m01_axi_WDATA;
  wire axi_mem_intercon_m01_axi_WLAST;
  wire axi_mem_intercon_m01_axi_WREADY;
  wire [3:0]axi_mem_intercon_m01_axi_WSTRB;
  wire axi_mem_intercon_m01_axi_WVALID;
  wire axi_timer_0_interrupt;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_0_uart_RxD;
  wire axi_uartlite_0_uart_TxD;
  wire clk_wiz_0_clk_out1;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire [31:0]microblaze_0_axi_dp_ARADDR;
  wire [2:0]microblaze_0_axi_dp_ARPROT;
  wire [0:0]microblaze_0_axi_dp_ARREADY;
  wire microblaze_0_axi_dp_ARVALID;
  wire [31:0]microblaze_0_axi_dp_AWADDR;
  wire [2:0]microblaze_0_axi_dp_AWPROT;
  wire [0:0]microblaze_0_axi_dp_AWREADY;
  wire microblaze_0_axi_dp_AWVALID;
  wire microblaze_0_axi_dp_BREADY;
  wire [1:0]microblaze_0_axi_dp_BRESP;
  wire [0:0]microblaze_0_axi_dp_BVALID;
  wire [31:0]microblaze_0_axi_dp_RDATA;
  wire microblaze_0_axi_dp_RREADY;
  wire [1:0]microblaze_0_axi_dp_RRESP;
  wire [0:0]microblaze_0_axi_dp_RVALID;
  wire [31:0]microblaze_0_axi_dp_WDATA;
  wire [0:0]microblaze_0_axi_dp_WREADY;
  wire [3:0]microblaze_0_axi_dp_WSTRB;
  wire microblaze_0_axi_dp_WVALID;
  wire [4:0]microblaze_0_axi_periph_m01_axi_ARADDR;
  wire microblaze_0_axi_periph_m01_axi_ARREADY;
  wire [0:0]microblaze_0_axi_periph_m01_axi_ARVALID;
  wire [4:0]microblaze_0_axi_periph_m01_axi_AWADDR;
  wire microblaze_0_axi_periph_m01_axi_AWREADY;
  wire [0:0]microblaze_0_axi_periph_m01_axi_AWVALID;
  wire [0:0]microblaze_0_axi_periph_m01_axi_BREADY;
  wire [1:0]microblaze_0_axi_periph_m01_axi_BRESP;
  wire microblaze_0_axi_periph_m01_axi_BVALID;
  wire [31:0]microblaze_0_axi_periph_m01_axi_RDATA;
  wire [0:0]microblaze_0_axi_periph_m01_axi_RREADY;
  wire [1:0]microblaze_0_axi_periph_m01_axi_RRESP;
  wire microblaze_0_axi_periph_m01_axi_RVALID;
  wire [31:0]microblaze_0_axi_periph_m01_axi_WDATA;
  wire microblaze_0_axi_periph_m01_axi_WREADY;
  wire [3:0]microblaze_0_axi_periph_m01_axi_WSTRB;
  wire [0:0]microblaze_0_axi_periph_m01_axi_WVALID;
  wire [3:0]microblaze_0_axi_periph_m02_axi_ARADDR;
  wire microblaze_0_axi_periph_m02_axi_ARREADY;
  wire [0:0]microblaze_0_axi_periph_m02_axi_ARVALID;
  wire [3:0]microblaze_0_axi_periph_m02_axi_AWADDR;
  wire microblaze_0_axi_periph_m02_axi_AWREADY;
  wire [0:0]microblaze_0_axi_periph_m02_axi_AWVALID;
  wire [0:0]microblaze_0_axi_periph_m02_axi_BREADY;
  wire [1:0]microblaze_0_axi_periph_m02_axi_BRESP;
  wire microblaze_0_axi_periph_m02_axi_BVALID;
  wire [31:0]microblaze_0_axi_periph_m02_axi_RDATA;
  wire [0:0]microblaze_0_axi_periph_m02_axi_RREADY;
  wire [1:0]microblaze_0_axi_periph_m02_axi_RRESP;
  wire microblaze_0_axi_periph_m02_axi_RVALID;
  wire [31:0]microblaze_0_axi_periph_m02_axi_WDATA;
  wire microblaze_0_axi_periph_m02_axi_WREADY;
  wire [3:0]microblaze_0_axi_periph_m02_axi_WSTRB;
  wire [0:0]microblaze_0_axi_periph_m02_axi_WVALID;
  wire [9:0]microblaze_0_axi_periph_m03_axi_ARADDR;
  wire microblaze_0_axi_periph_m03_axi_ARREADY;
  wire [0:0]microblaze_0_axi_periph_m03_axi_ARVALID;
  wire [9:0]microblaze_0_axi_periph_m03_axi_AWADDR;
  wire microblaze_0_axi_periph_m03_axi_AWREADY;
  wire [0:0]microblaze_0_axi_periph_m03_axi_AWVALID;
  wire [0:0]microblaze_0_axi_periph_m03_axi_BREADY;
  wire [1:0]microblaze_0_axi_periph_m03_axi_BRESP;
  wire microblaze_0_axi_periph_m03_axi_BVALID;
  wire [31:0]microblaze_0_axi_periph_m03_axi_RDATA;
  wire [0:0]microblaze_0_axi_periph_m03_axi_RREADY;
  wire [1:0]microblaze_0_axi_periph_m03_axi_RRESP;
  wire microblaze_0_axi_periph_m03_axi_RVALID;
  wire [31:0]microblaze_0_axi_periph_m03_axi_WDATA;
  wire microblaze_0_axi_periph_m03_axi_WREADY;
  wire [0:0]microblaze_0_axi_periph_m03_axi_WVALID;
  wire [17:0]microblaze_0_axi_periph_m04_axi_ARADDR;
  wire microblaze_0_axi_periph_m04_axi_ARREADY;
  wire [0:0]microblaze_0_axi_periph_m04_axi_ARVALID;
  wire [17:0]microblaze_0_axi_periph_m04_axi_AWADDR;
  wire microblaze_0_axi_periph_m04_axi_AWREADY;
  wire [0:0]microblaze_0_axi_periph_m04_axi_AWVALID;
  wire [0:0]microblaze_0_axi_periph_m04_axi_BREADY;
  wire [1:0]microblaze_0_axi_periph_m04_axi_BRESP;
  wire microblaze_0_axi_periph_m04_axi_BVALID;
  wire [31:0]microblaze_0_axi_periph_m04_axi_RDATA;
  wire [0:0]microblaze_0_axi_periph_m04_axi_RREADY;
  wire [1:0]microblaze_0_axi_periph_m04_axi_RRESP;
  wire microblaze_0_axi_periph_m04_axi_RVALID;
  wire [31:0]microblaze_0_axi_periph_m04_axi_WDATA;
  wire microblaze_0_axi_periph_m04_axi_WREADY;
  wire [3:0]microblaze_0_axi_periph_m04_axi_WSTRB;
  wire [0:0]microblaze_0_axi_periph_m04_axi_WVALID;
  wire microblaze_0_debug_CAPTURE;
  wire microblaze_0_debug_CLK;
  wire [0:7]microblaze_0_debug_REG_EN;
  wire microblaze_0_debug_RST;
  wire microblaze_0_debug_SHIFT;
  wire microblaze_0_debug_TDI;
  wire microblaze_0_debug_TDO;
  wire microblaze_0_debug_UPDATE;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [8:0]microblaze_0_intc_axi_ARADDR;
  wire microblaze_0_intc_axi_ARREADY;
  wire [0:0]microblaze_0_intc_axi_ARVALID;
  wire [8:0]microblaze_0_intc_axi_AWADDR;
  wire microblaze_0_intc_axi_AWREADY;
  wire [0:0]microblaze_0_intc_axi_AWVALID;
  wire [0:0]microblaze_0_intc_axi_BREADY;
  wire [1:0]microblaze_0_intc_axi_BRESP;
  wire microblaze_0_intc_axi_BVALID;
  wire [31:0]microblaze_0_intc_axi_RDATA;
  wire [0:0]microblaze_0_intc_axi_RREADY;
  wire [1:0]microblaze_0_intc_axi_RRESP;
  wire microblaze_0_intc_axi_RVALID;
  wire [31:0]microblaze_0_intc_axi_WDATA;
  wire microblaze_0_intc_axi_WREADY;
  wire [3:0]microblaze_0_intc_axi_WSTRB;
  wire [0:0]microblaze_0_intc_axi_WVALID;
  wire [0:1]microblaze_0_interrupt_ACK;
  wire [31:0]microblaze_0_interrupt_ADDRESS;
  wire microblaze_0_interrupt_INTERRUPT;
  wire [4:0]microblaze_0_intr;
  wire [31:0]microblaze_0_m_axi_dc_ARADDR;
  wire [1:0]microblaze_0_m_axi_dc_ARBURST;
  wire [3:0]microblaze_0_m_axi_dc_ARCACHE;
  wire [7:0]microblaze_0_m_axi_dc_ARLEN;
  wire microblaze_0_m_axi_dc_ARLOCK;
  wire [2:0]microblaze_0_m_axi_dc_ARPROT;
  wire [3:0]microblaze_0_m_axi_dc_ARQOS;
  wire microblaze_0_m_axi_dc_ARREADY;
  wire [2:0]microblaze_0_m_axi_dc_ARSIZE;
  wire microblaze_0_m_axi_dc_ARVALID;
  wire [31:0]microblaze_0_m_axi_dc_AWADDR;
  wire [1:0]microblaze_0_m_axi_dc_AWBURST;
  wire [3:0]microblaze_0_m_axi_dc_AWCACHE;
  wire [7:0]microblaze_0_m_axi_dc_AWLEN;
  wire microblaze_0_m_axi_dc_AWLOCK;
  wire [2:0]microblaze_0_m_axi_dc_AWPROT;
  wire [3:0]microblaze_0_m_axi_dc_AWQOS;
  wire microblaze_0_m_axi_dc_AWREADY;
  wire [2:0]microblaze_0_m_axi_dc_AWSIZE;
  wire microblaze_0_m_axi_dc_AWVALID;
  wire microblaze_0_m_axi_dc_BREADY;
  wire [1:0]microblaze_0_m_axi_dc_BRESP;
  wire microblaze_0_m_axi_dc_BVALID;
  wire [31:0]microblaze_0_m_axi_dc_RDATA;
  wire microblaze_0_m_axi_dc_RLAST;
  wire microblaze_0_m_axi_dc_RREADY;
  wire [1:0]microblaze_0_m_axi_dc_RRESP;
  wire microblaze_0_m_axi_dc_RVALID;
  wire [31:0]microblaze_0_m_axi_dc_WDATA;
  wire microblaze_0_m_axi_dc_WLAST;
  wire microblaze_0_m_axi_dc_WREADY;
  wire [3:0]microblaze_0_m_axi_dc_WSTRB;
  wire microblaze_0_m_axi_dc_WVALID;
  wire [31:0]microblaze_0_m_axi_ic_ARADDR;
  wire [1:0]microblaze_0_m_axi_ic_ARBURST;
  wire [3:0]microblaze_0_m_axi_ic_ARCACHE;
  wire [7:0]microblaze_0_m_axi_ic_ARLEN;
  wire microblaze_0_m_axi_ic_ARLOCK;
  wire [2:0]microblaze_0_m_axi_ic_ARPROT;
  wire [3:0]microblaze_0_m_axi_ic_ARQOS;
  wire microblaze_0_m_axi_ic_ARREADY;
  wire [2:0]microblaze_0_m_axi_ic_ARSIZE;
  wire microblaze_0_m_axi_ic_ARVALID;
  wire [31:0]microblaze_0_m_axi_ic_RDATA;
  wire microblaze_0_m_axi_ic_RLAST;
  wire microblaze_0_m_axi_ic_RREADY;
  wire [1:0]microblaze_0_m_axi_ic_RRESP;
  wire microblaze_0_m_axi_ic_RVALID;
  wire [13:0]mig_7series_0_ddr3_ADDR;
  wire [2:0]mig_7series_0_ddr3_BA;
  wire mig_7series_0_ddr3_CAS_N;
  wire [0:0]mig_7series_0_ddr3_CKE;
  wire [0:0]mig_7series_0_ddr3_CK_N;
  wire [0:0]mig_7series_0_ddr3_CK_P;
  wire [0:0]mig_7series_0_ddr3_CS_N;
  wire [7:0]mig_7series_0_ddr3_DM;
  wire [63:0]mig_7series_0_ddr3_DQ;
  wire [7:0]mig_7series_0_ddr3_DQS_N;
  wire [7:0]mig_7series_0_ddr3_DQS_P;
  wire [0:0]mig_7series_0_ddr3_ODT;
  wire mig_7series_0_ddr3_RAS_N;
  wire mig_7series_0_ddr3_RESET_N;
  wire mig_7series_0_ddr3_WE_N;
  wire mig_7series_0_ui_addn_clk_0;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]proc_sys_reset_1_bus_struct_reset;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire proc_sys_reset_1_mb_reset;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;
  wire sys_clk_n_1;
  wire sys_clk_p_1;

  assign DDR3_addr[13:0] = mig_7series_0_ddr3_ADDR;
  assign DDR3_ba[2:0] = mig_7series_0_ddr3_BA;
  assign DDR3_cas_n = mig_7series_0_ddr3_CAS_N;
  assign DDR3_ck_n[0] = mig_7series_0_ddr3_CK_N;
  assign DDR3_ck_p[0] = mig_7series_0_ddr3_CK_P;
  assign DDR3_cke[0] = mig_7series_0_ddr3_CKE;
  assign DDR3_cs_n[0] = mig_7series_0_ddr3_CS_N;
  assign DDR3_dm[7:0] = mig_7series_0_ddr3_DM;
  assign DDR3_odt[0] = mig_7series_0_ddr3_ODT;
  assign DDR3_ras_n = mig_7series_0_ddr3_RAS_N;
  assign DDR3_reset_n = mig_7series_0_ddr3_RESET_N;
  assign DDR3_we_n = mig_7series_0_ddr3_WE_N;
  assign axi_ethernet_0_gmii_RXD = gmii_rxd[7:0];
  assign axi_ethernet_0_gmii_RX_CLK = gmii_rx_clk;
  assign axi_ethernet_0_gmii_RX_DV = gmii_rx_dv;
  assign axi_ethernet_0_gmii_RX_ER = gmii_rx_er;
  assign axi_ethernet_0_gmii_TX_CLK = gmii_tx_clk;
  assign axi_uartlite_0_uart_RxD = rs232_uart_rxd;
  assign gmii_gtx_clk = axi_ethernet_0_gmii_GTX_CLK;
  assign gmii_tx_en = axi_ethernet_0_gmii_TX_EN;
  assign gmii_tx_er = axi_ethernet_0_gmii_TX_ER;
  assign gmii_txd[7:0] = axi_ethernet_0_gmii_TXD;
  assign mdio_io_mdc = axi_ethernet_0_mdio_MDC;
  assign phy_reset_out = axi_ethernet_0_phy_rst_n;
  assign reset_1 = reset;
  assign rs232_uart_txd = axi_uartlite_0_uart_TxD;
  assign sys_clk_n_1 = sys_clk_n;
  assign sys_clk_p_1 = sys_clk_p;
GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* BMM_INFO_ADDRESS_SPACE = "byte  0xC0000000 32 >  mb_subsystem blk_mem_gen_0" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   mb_subsystem_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_bram_porta_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_bram_portb_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_bram_porta_CLK),
        .bram_clk_b(axi_bram_ctrl_0_bram_portb_CLK),
        .bram_en_a(axi_bram_ctrl_0_bram_porta_EN),
        .bram_en_b(axi_bram_ctrl_0_bram_portb_EN),
        .bram_rddata_a(axi_bram_ctrl_0_bram_porta_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_bram_portb_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_bram_porta_RST),
        .bram_rst_b(axi_bram_ctrl_0_bram_portb_RST),
        .bram_we_a(axi_bram_ctrl_0_bram_porta_WE),
        .bram_we_b(axi_bram_ctrl_0_bram_portb_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_porta_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_bram_portb_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_mem_intercon_m01_axi_ARADDR),
        .s_axi_arburst(axi_mem_intercon_m01_axi_ARBURST),
        .s_axi_arcache(axi_mem_intercon_m01_axi_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arid(axi_mem_intercon_m01_axi_ARID),
        .s_axi_arlen(axi_mem_intercon_m01_axi_ARLEN),
        .s_axi_arlock(axi_mem_intercon_m01_axi_ARLOCK),
        .s_axi_arprot(axi_mem_intercon_m01_axi_ARPROT),
        .s_axi_arready(axi_mem_intercon_m01_axi_ARREADY),
        .s_axi_arsize(axi_mem_intercon_m01_axi_ARSIZE),
        .s_axi_arvalid(axi_mem_intercon_m01_axi_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_m01_axi_AWADDR),
        .s_axi_awburst(axi_mem_intercon_m01_axi_AWBURST),
        .s_axi_awcache(axi_mem_intercon_m01_axi_AWCACHE),
        .s_axi_awid(axi_mem_intercon_m01_axi_AWID),
        .s_axi_awlen(axi_mem_intercon_m01_axi_AWLEN),
        .s_axi_awlock(axi_mem_intercon_m01_axi_AWLOCK),
        .s_axi_awprot(axi_mem_intercon_m01_axi_AWPROT),
        .s_axi_awready(axi_mem_intercon_m01_axi_AWREADY),
        .s_axi_awsize(axi_mem_intercon_m01_axi_AWSIZE),
        .s_axi_awvalid(axi_mem_intercon_m01_axi_AWVALID),
        .s_axi_bid(axi_mem_intercon_m01_axi_BID),
        .s_axi_bready(axi_mem_intercon_m01_axi_BREADY),
        .s_axi_bresp(axi_mem_intercon_m01_axi_BRESP),
        .s_axi_bvalid(axi_mem_intercon_m01_axi_BVALID),
        .s_axi_rdata(axi_mem_intercon_m01_axi_RDATA),
        .s_axi_rid(axi_mem_intercon_m01_axi_RID),
        .s_axi_rlast(axi_mem_intercon_m01_axi_RLAST),
        .s_axi_rready(axi_mem_intercon_m01_axi_RREADY),
        .s_axi_rresp(axi_mem_intercon_m01_axi_RRESP),
        .s_axi_rvalid(axi_mem_intercon_m01_axi_RVALID),
        .s_axi_wdata(axi_mem_intercon_m01_axi_WDATA),
        .s_axi_wlast(axi_mem_intercon_m01_axi_WLAST),
        .s_axi_wready(axi_mem_intercon_m01_axi_WREADY),
        .s_axi_wstrb(axi_mem_intercon_m01_axi_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_m01_axi_WVALID));
mb_subsystem_axi_ethernet_0_0 axi_ethernet_0
       (.axi_rxd_arstn(axi_ethernet_0_dma_s2mm_prmry_reset_out_n),
        .axi_rxs_arstn(axi_ethernet_0_dma_s2mm_sts_reset_out_n),
        .axi_txc_arstn(axi_ethernet_0_dma_mm2s_cntrl_reset_out_n),
        .axi_txd_arstn(axi_ethernet_0_dma_mm2s_prmry_reset_out_n),
        .axis_clk(microblaze_0_Clk),
        .gmii_gtx_clk(axi_ethernet_0_gmii_GTX_CLK),
        .gmii_rx_clk(axi_ethernet_0_gmii_RX_CLK),
        .gmii_rx_dv(axi_ethernet_0_gmii_RX_DV),
        .gmii_rx_er(axi_ethernet_0_gmii_RX_ER),
        .gmii_rxd(axi_ethernet_0_gmii_RXD),
        .gmii_tx_clk(axi_ethernet_0_gmii_TX_CLK),
        .gmii_tx_en(axi_ethernet_0_gmii_TX_EN),
        .gmii_tx_er(axi_ethernet_0_gmii_TX_ER),
        .gmii_txd(axi_ethernet_0_gmii_TXD),
        .gtx_clk(clk_wiz_0_clk_out1),
        .interrupt(axi_ethernet_0_interrupt),
        .m_axis_rxd_tdata(axi_ethernet_0_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axi_ethernet_0_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axi_ethernet_0_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axi_ethernet_0_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axi_ethernet_0_m_axis_rxd_TVALID),
        .m_axis_rxs_tdata(axi_ethernet_0_m_axis_rxs_TDATA),
        .m_axis_rxs_tkeep(axi_ethernet_0_m_axis_rxs_TKEEP),
        .m_axis_rxs_tlast(axi_ethernet_0_m_axis_rxs_TLAST),
        .m_axis_rxs_tready(axi_ethernet_0_m_axis_rxs_TREADY),
        .m_axis_rxs_tvalid(axi_ethernet_0_m_axis_rxs_TVALID),
        .mdio_io_io(mdio_io_io),
        .mdio_io_mdc(axi_ethernet_0_mdio_MDC),
        .phy_rst_n(axi_ethernet_0_phy_rst_n),
        .ref_clk(mig_7series_0_ui_addn_clk_0),
        .s_axi_araddr(microblaze_0_axi_periph_m04_axi_ARADDR),
        .s_axi_arready(microblaze_0_axi_periph_m04_axi_ARREADY),
        .s_axi_arvalid(microblaze_0_axi_periph_m04_axi_ARVALID),
        .s_axi_awaddr(microblaze_0_axi_periph_m04_axi_AWADDR),
        .s_axi_awready(microblaze_0_axi_periph_m04_axi_AWREADY),
        .s_axi_awvalid(microblaze_0_axi_periph_m04_axi_AWVALID),
        .s_axi_bready(microblaze_0_axi_periph_m04_axi_BREADY),
        .s_axi_bresp(microblaze_0_axi_periph_m04_axi_BRESP),
        .s_axi_bvalid(microblaze_0_axi_periph_m04_axi_BVALID),
        .s_axi_lite_clk(microblaze_0_Clk),
        .s_axi_lite_resetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_rdata(microblaze_0_axi_periph_m04_axi_RDATA),
        .s_axi_rready(microblaze_0_axi_periph_m04_axi_RREADY),
        .s_axi_rresp(microblaze_0_axi_periph_m04_axi_RRESP),
        .s_axi_rvalid(microblaze_0_axi_periph_m04_axi_RVALID),
        .s_axi_wdata(microblaze_0_axi_periph_m04_axi_WDATA),
        .s_axi_wready(microblaze_0_axi_periph_m04_axi_WREADY),
        .s_axi_wstrb(microblaze_0_axi_periph_m04_axi_WSTRB),
        .s_axi_wvalid(microblaze_0_axi_periph_m04_axi_WVALID),
        .s_axis_txc_tdata(axi_ethernet_0_dma_m_axis_cntrl_TDATA),
        .s_axis_txc_tkeep(axi_ethernet_0_dma_m_axis_cntrl_TKEEP),
        .s_axis_txc_tlast(axi_ethernet_0_dma_m_axis_cntrl_TLAST),
        .s_axis_txc_tready(axi_ethernet_0_dma_m_axis_cntrl_TREADY),
        .s_axis_txc_tvalid(axi_ethernet_0_dma_m_axis_cntrl_TVALID),
        .s_axis_txd_tdata(axi_ethernet_0_dma_m_axis_mm2s_TDATA),
        .s_axis_txd_tkeep(axi_ethernet_0_dma_m_axis_mm2s_TKEEP),
        .s_axis_txd_tlast(axi_ethernet_0_dma_m_axis_mm2s_TLAST),
        .s_axis_txd_tready(axi_ethernet_0_dma_m_axis_mm2s_TREADY),
        .s_axis_txd_tvalid(axi_ethernet_0_dma_m_axis_mm2s_TVALID));
mb_subsystem_axi_ethernet_0_dma_0 axi_ethernet_0_dma
       (.axi_resetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axi_mm2s_aclk(microblaze_0_Clk),
        .m_axi_mm2s_araddr(axi_ethernet_0_dma_m_axi_mm2s_ARADDR),
        .m_axi_mm2s_arburst(axi_ethernet_0_dma_m_axi_mm2s_ARBURST),
        .m_axi_mm2s_arcache(axi_ethernet_0_dma_m_axi_mm2s_ARCACHE),
        .m_axi_mm2s_arlen(axi_ethernet_0_dma_m_axi_mm2s_ARLEN),
        .m_axi_mm2s_arprot(axi_ethernet_0_dma_m_axi_mm2s_ARPROT),
        .m_axi_mm2s_arready(axi_ethernet_0_dma_m_axi_mm2s_ARREADY),
        .m_axi_mm2s_arsize(axi_ethernet_0_dma_m_axi_mm2s_ARSIZE),
        .m_axi_mm2s_arvalid(axi_ethernet_0_dma_m_axi_mm2s_ARVALID),
        .m_axi_mm2s_rdata(axi_ethernet_0_dma_m_axi_mm2s_RDATA),
        .m_axi_mm2s_rlast(axi_ethernet_0_dma_m_axi_mm2s_RLAST),
        .m_axi_mm2s_rready(axi_ethernet_0_dma_m_axi_mm2s_RREADY),
        .m_axi_mm2s_rresp(axi_ethernet_0_dma_m_axi_mm2s_RRESP),
        .m_axi_mm2s_rvalid(axi_ethernet_0_dma_m_axi_mm2s_RVALID),
        .m_axi_s2mm_aclk(microblaze_0_Clk),
        .m_axi_s2mm_awaddr(axi_ethernet_0_dma_m_axi_s2mm_AWADDR),
        .m_axi_s2mm_awburst(axi_ethernet_0_dma_m_axi_s2mm_AWBURST),
        .m_axi_s2mm_awcache(axi_ethernet_0_dma_m_axi_s2mm_AWCACHE),
        .m_axi_s2mm_awlen(axi_ethernet_0_dma_m_axi_s2mm_AWLEN),
        .m_axi_s2mm_awprot(axi_ethernet_0_dma_m_axi_s2mm_AWPROT),
        .m_axi_s2mm_awready(axi_ethernet_0_dma_m_axi_s2mm_AWREADY),
        .m_axi_s2mm_awsize(axi_ethernet_0_dma_m_axi_s2mm_AWSIZE),
        .m_axi_s2mm_awvalid(axi_ethernet_0_dma_m_axi_s2mm_AWVALID),
        .m_axi_s2mm_bready(axi_ethernet_0_dma_m_axi_s2mm_BREADY),
        .m_axi_s2mm_bresp(axi_ethernet_0_dma_m_axi_s2mm_BRESP),
        .m_axi_s2mm_bvalid(axi_ethernet_0_dma_m_axi_s2mm_BVALID),
        .m_axi_s2mm_wdata(axi_ethernet_0_dma_m_axi_s2mm_WDATA),
        .m_axi_s2mm_wlast(axi_ethernet_0_dma_m_axi_s2mm_WLAST),
        .m_axi_s2mm_wready(axi_ethernet_0_dma_m_axi_s2mm_WREADY),
        .m_axi_s2mm_wstrb(axi_ethernet_0_dma_m_axi_s2mm_WSTRB),
        .m_axi_s2mm_wvalid(axi_ethernet_0_dma_m_axi_s2mm_WVALID),
        .m_axi_sg_aclk(microblaze_0_Clk),
        .m_axi_sg_araddr(axi_ethernet_0_dma_m_axi_sg_ARADDR),
        .m_axi_sg_arburst(axi_ethernet_0_dma_m_axi_sg_ARBURST),
        .m_axi_sg_arcache(axi_ethernet_0_dma_m_axi_sg_ARCACHE),
        .m_axi_sg_arlen(axi_ethernet_0_dma_m_axi_sg_ARLEN),
        .m_axi_sg_arprot(axi_ethernet_0_dma_m_axi_sg_ARPROT),
        .m_axi_sg_arready(axi_ethernet_0_dma_m_axi_sg_ARREADY),
        .m_axi_sg_arsize(axi_ethernet_0_dma_m_axi_sg_ARSIZE),
        .m_axi_sg_arvalid(axi_ethernet_0_dma_m_axi_sg_ARVALID),
        .m_axi_sg_awaddr(axi_ethernet_0_dma_m_axi_sg_AWADDR),
        .m_axi_sg_awburst(axi_ethernet_0_dma_m_axi_sg_AWBURST),
        .m_axi_sg_awcache(axi_ethernet_0_dma_m_axi_sg_AWCACHE),
        .m_axi_sg_awlen(axi_ethernet_0_dma_m_axi_sg_AWLEN),
        .m_axi_sg_awprot(axi_ethernet_0_dma_m_axi_sg_AWPROT),
        .m_axi_sg_awready(axi_ethernet_0_dma_m_axi_sg_AWREADY),
        .m_axi_sg_awsize(axi_ethernet_0_dma_m_axi_sg_AWSIZE),
        .m_axi_sg_awvalid(axi_ethernet_0_dma_m_axi_sg_AWVALID),
        .m_axi_sg_bready(axi_ethernet_0_dma_m_axi_sg_BREADY),
        .m_axi_sg_bresp(axi_ethernet_0_dma_m_axi_sg_BRESP),
        .m_axi_sg_bvalid(axi_ethernet_0_dma_m_axi_sg_BVALID),
        .m_axi_sg_rdata(axi_ethernet_0_dma_m_axi_sg_RDATA),
        .m_axi_sg_rlast(axi_ethernet_0_dma_m_axi_sg_RLAST),
        .m_axi_sg_rready(axi_ethernet_0_dma_m_axi_sg_RREADY),
        .m_axi_sg_rresp(axi_ethernet_0_dma_m_axi_sg_RRESP),
        .m_axi_sg_rvalid(axi_ethernet_0_dma_m_axi_sg_RVALID),
        .m_axi_sg_wdata(axi_ethernet_0_dma_m_axi_sg_WDATA),
        .m_axi_sg_wlast(axi_ethernet_0_dma_m_axi_sg_WLAST),
        .m_axi_sg_wready(axi_ethernet_0_dma_m_axi_sg_WREADY),
        .m_axi_sg_wstrb(axi_ethernet_0_dma_m_axi_sg_WSTRB),
        .m_axi_sg_wvalid(axi_ethernet_0_dma_m_axi_sg_WVALID),
        .m_axis_mm2s_cntrl_tdata(axi_ethernet_0_dma_m_axis_cntrl_TDATA),
        .m_axis_mm2s_cntrl_tkeep(axi_ethernet_0_dma_m_axis_cntrl_TKEEP),
        .m_axis_mm2s_cntrl_tlast(axi_ethernet_0_dma_m_axis_cntrl_TLAST),
        .m_axis_mm2s_cntrl_tready(axi_ethernet_0_dma_m_axis_cntrl_TREADY),
        .m_axis_mm2s_cntrl_tvalid(axi_ethernet_0_dma_m_axis_cntrl_TVALID),
        .m_axis_mm2s_tdata(axi_ethernet_0_dma_m_axis_mm2s_TDATA),
        .m_axis_mm2s_tkeep(axi_ethernet_0_dma_m_axis_mm2s_TKEEP),
        .m_axis_mm2s_tlast(axi_ethernet_0_dma_m_axis_mm2s_TLAST),
        .m_axis_mm2s_tready(axi_ethernet_0_dma_m_axis_mm2s_TREADY),
        .m_axis_mm2s_tvalid(axi_ethernet_0_dma_m_axis_mm2s_TVALID),
        .mm2s_cntrl_reset_out_n(axi_ethernet_0_dma_mm2s_cntrl_reset_out_n),
        .mm2s_introut(axi_ethernet_0_dma_mm2s_introut),
        .mm2s_prmry_reset_out_n(axi_ethernet_0_dma_mm2s_prmry_reset_out_n),
        .s2mm_introut(axi_ethernet_0_dma_s2mm_introut),
        .s2mm_prmry_reset_out_n(axi_ethernet_0_dma_s2mm_prmry_reset_out_n),
        .s2mm_sts_reset_out_n(axi_ethernet_0_dma_s2mm_sts_reset_out_n),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(microblaze_0_axi_periph_m03_axi_ARADDR),
        .s_axi_lite_arready(microblaze_0_axi_periph_m03_axi_ARREADY),
        .s_axi_lite_arvalid(microblaze_0_axi_periph_m03_axi_ARVALID),
        .s_axi_lite_awaddr(microblaze_0_axi_periph_m03_axi_AWADDR),
        .s_axi_lite_awready(microblaze_0_axi_periph_m03_axi_AWREADY),
        .s_axi_lite_awvalid(microblaze_0_axi_periph_m03_axi_AWVALID),
        .s_axi_lite_bready(microblaze_0_axi_periph_m03_axi_BREADY),
        .s_axi_lite_bresp(microblaze_0_axi_periph_m03_axi_BRESP),
        .s_axi_lite_bvalid(microblaze_0_axi_periph_m03_axi_BVALID),
        .s_axi_lite_rdata(microblaze_0_axi_periph_m03_axi_RDATA),
        .s_axi_lite_rready(microblaze_0_axi_periph_m03_axi_RREADY),
        .s_axi_lite_rresp(microblaze_0_axi_periph_m03_axi_RRESP),
        .s_axi_lite_rvalid(microblaze_0_axi_periph_m03_axi_RVALID),
        .s_axi_lite_wdata(microblaze_0_axi_periph_m03_axi_WDATA),
        .s_axi_lite_wready(microblaze_0_axi_periph_m03_axi_WREADY),
        .s_axi_lite_wvalid(microblaze_0_axi_periph_m03_axi_WVALID),
        .s_axis_s2mm_sts_tdata(axi_ethernet_0_m_axis_rxs_TDATA),
        .s_axis_s2mm_sts_tkeep(axi_ethernet_0_m_axis_rxs_TKEEP),
        .s_axis_s2mm_sts_tlast(axi_ethernet_0_m_axis_rxs_TLAST),
        .s_axis_s2mm_sts_tready(axi_ethernet_0_m_axis_rxs_TREADY),
        .s_axis_s2mm_sts_tvalid(axi_ethernet_0_m_axis_rxs_TVALID),
        .s_axis_s2mm_tdata(axi_ethernet_0_m_axis_rxd_TDATA),
        .s_axis_s2mm_tkeep(axi_ethernet_0_m_axis_rxd_TKEEP),
        .s_axis_s2mm_tlast(axi_ethernet_0_m_axis_rxd_TLAST),
        .s_axis_s2mm_tready(axi_ethernet_0_m_axis_rxd_TREADY),
        .s_axis_s2mm_tvalid(axi_ethernet_0_m_axis_rxd_TVALID));
mb_subsystem_axi_mem_intercon_1 axi_mem_intercon
       (.ACLK(microblaze_0_Clk),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_m00_axi_ARID),
        .M00_AXI_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_m00_axi_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_m00_axi_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_m00_axi_AWID),
        .M00_AXI_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_m00_axi_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_m00_axi_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_m00_axi_BID),
        .M00_AXI_bready(axi_mem_intercon_m00_axi_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_m00_axi_RDATA),
        .M00_AXI_rid(axi_mem_intercon_m00_axi_RID),
        .M00_AXI_rlast(axi_mem_intercon_m00_axi_RLAST),
        .M00_AXI_rready(axi_mem_intercon_m00_axi_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_m00_axi_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_m00_axi_WLAST),
        .M00_AXI_wready(axi_mem_intercon_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M01_AXI_araddr(axi_mem_intercon_m01_axi_ARADDR),
        .M01_AXI_arburst(axi_mem_intercon_m01_axi_ARBURST),
        .M01_AXI_arcache(axi_mem_intercon_m01_axi_ARCACHE),
        .M01_AXI_arid(axi_mem_intercon_m01_axi_ARID),
        .M01_AXI_arlen(axi_mem_intercon_m01_axi_ARLEN),
        .M01_AXI_arlock(axi_mem_intercon_m01_axi_ARLOCK),
        .M01_AXI_arprot(axi_mem_intercon_m01_axi_ARPROT),
        .M01_AXI_arready(axi_mem_intercon_m01_axi_ARREADY),
        .M01_AXI_arsize(axi_mem_intercon_m01_axi_ARSIZE),
        .M01_AXI_arvalid(axi_mem_intercon_m01_axi_ARVALID),
        .M01_AXI_awaddr(axi_mem_intercon_m01_axi_AWADDR),
        .M01_AXI_awburst(axi_mem_intercon_m01_axi_AWBURST),
        .M01_AXI_awcache(axi_mem_intercon_m01_axi_AWCACHE),
        .M01_AXI_awid(axi_mem_intercon_m01_axi_AWID),
        .M01_AXI_awlen(axi_mem_intercon_m01_axi_AWLEN),
        .M01_AXI_awlock(axi_mem_intercon_m01_axi_AWLOCK),
        .M01_AXI_awprot(axi_mem_intercon_m01_axi_AWPROT),
        .M01_AXI_awready(axi_mem_intercon_m01_axi_AWREADY),
        .M01_AXI_awsize(axi_mem_intercon_m01_axi_AWSIZE),
        .M01_AXI_awvalid(axi_mem_intercon_m01_axi_AWVALID),
        .M01_AXI_bid(axi_mem_intercon_m01_axi_BID),
        .M01_AXI_bready(axi_mem_intercon_m01_axi_BREADY),
        .M01_AXI_bresp(axi_mem_intercon_m01_axi_BRESP),
        .M01_AXI_bvalid(axi_mem_intercon_m01_axi_BVALID),
        .M01_AXI_rdata(axi_mem_intercon_m01_axi_RDATA),
        .M01_AXI_rid(axi_mem_intercon_m01_axi_RID),
        .M01_AXI_rlast(axi_mem_intercon_m01_axi_RLAST),
        .M01_AXI_rready(axi_mem_intercon_m01_axi_RREADY),
        .M01_AXI_rresp(axi_mem_intercon_m01_axi_RRESP),
        .M01_AXI_rvalid(axi_mem_intercon_m01_axi_RVALID),
        .M01_AXI_wdata(axi_mem_intercon_m01_axi_WDATA),
        .M01_AXI_wlast(axi_mem_intercon_m01_axi_WLAST),
        .M01_AXI_wready(axi_mem_intercon_m01_axi_WREADY),
        .M01_AXI_wstrb(axi_mem_intercon_m01_axi_WSTRB),
        .M01_AXI_wvalid(axi_mem_intercon_m01_axi_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(microblaze_0_m_axi_dc_ARADDR),
        .S00_AXI_arburst(microblaze_0_m_axi_dc_ARBURST),
        .S00_AXI_arcache(microblaze_0_m_axi_dc_ARCACHE),
        .S00_AXI_arlen(microblaze_0_m_axi_dc_ARLEN),
        .S00_AXI_arlock(microblaze_0_m_axi_dc_ARLOCK),
        .S00_AXI_arprot(microblaze_0_m_axi_dc_ARPROT),
        .S00_AXI_arqos(microblaze_0_m_axi_dc_ARQOS),
        .S00_AXI_arready(microblaze_0_m_axi_dc_ARREADY),
        .S00_AXI_arsize(microblaze_0_m_axi_dc_ARSIZE),
        .S00_AXI_arvalid(microblaze_0_m_axi_dc_ARVALID),
        .S00_AXI_awaddr(microblaze_0_m_axi_dc_AWADDR),
        .S00_AXI_awburst(microblaze_0_m_axi_dc_AWBURST),
        .S00_AXI_awcache(microblaze_0_m_axi_dc_AWCACHE),
        .S00_AXI_awlen(microblaze_0_m_axi_dc_AWLEN),
        .S00_AXI_awlock(microblaze_0_m_axi_dc_AWLOCK),
        .S00_AXI_awprot(microblaze_0_m_axi_dc_AWPROT),
        .S00_AXI_awqos(microblaze_0_m_axi_dc_AWQOS),
        .S00_AXI_awready(microblaze_0_m_axi_dc_AWREADY),
        .S00_AXI_awsize(microblaze_0_m_axi_dc_AWSIZE),
        .S00_AXI_awvalid(microblaze_0_m_axi_dc_AWVALID),
        .S00_AXI_bready(microblaze_0_m_axi_dc_BREADY),
        .S00_AXI_bresp(microblaze_0_m_axi_dc_BRESP),
        .S00_AXI_bvalid(microblaze_0_m_axi_dc_BVALID),
        .S00_AXI_rdata(microblaze_0_m_axi_dc_RDATA),
        .S00_AXI_rlast(microblaze_0_m_axi_dc_RLAST),
        .S00_AXI_rready(microblaze_0_m_axi_dc_RREADY),
        .S00_AXI_rresp(microblaze_0_m_axi_dc_RRESP),
        .S00_AXI_rvalid(microblaze_0_m_axi_dc_RVALID),
        .S00_AXI_wdata(microblaze_0_m_axi_dc_WDATA),
        .S00_AXI_wlast(microblaze_0_m_axi_dc_WLAST),
        .S00_AXI_wready(microblaze_0_m_axi_dc_WREADY),
        .S00_AXI_wstrb(microblaze_0_m_axi_dc_WSTRB),
        .S00_AXI_wvalid(microblaze_0_m_axi_dc_WVALID),
        .S01_ACLK(microblaze_0_Clk),
        .S01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S01_AXI_araddr(microblaze_0_m_axi_ic_ARADDR),
        .S01_AXI_arburst(microblaze_0_m_axi_ic_ARBURST),
        .S01_AXI_arcache(microblaze_0_m_axi_ic_ARCACHE),
        .S01_AXI_arlen(microblaze_0_m_axi_ic_ARLEN),
        .S01_AXI_arlock(microblaze_0_m_axi_ic_ARLOCK),
        .S01_AXI_arprot(microblaze_0_m_axi_ic_ARPROT),
        .S01_AXI_arqos(microblaze_0_m_axi_ic_ARQOS),
        .S01_AXI_arready(microblaze_0_m_axi_ic_ARREADY),
        .S01_AXI_arsize(microblaze_0_m_axi_ic_ARSIZE),
        .S01_AXI_arvalid(microblaze_0_m_axi_ic_ARVALID),
        .S01_AXI_rdata(microblaze_0_m_axi_ic_RDATA),
        .S01_AXI_rlast(microblaze_0_m_axi_ic_RLAST),
        .S01_AXI_rready(microblaze_0_m_axi_ic_RREADY),
        .S01_AXI_rresp(microblaze_0_m_axi_ic_RRESP),
        .S01_AXI_rvalid(microblaze_0_m_axi_ic_RVALID),
        .S02_ACLK(microblaze_0_Clk),
        .S02_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S02_AXI_araddr(axi_ethernet_0_dma_m_axi_sg_ARADDR),
        .S02_AXI_arburst(axi_ethernet_0_dma_m_axi_sg_ARBURST),
        .S02_AXI_arcache(axi_ethernet_0_dma_m_axi_sg_ARCACHE),
        .S02_AXI_arlen(axi_ethernet_0_dma_m_axi_sg_ARLEN),
        .S02_AXI_arprot(axi_ethernet_0_dma_m_axi_sg_ARPROT),
        .S02_AXI_arready(axi_ethernet_0_dma_m_axi_sg_ARREADY),
        .S02_AXI_arsize(axi_ethernet_0_dma_m_axi_sg_ARSIZE),
        .S02_AXI_arvalid(axi_ethernet_0_dma_m_axi_sg_ARVALID),
        .S02_AXI_awaddr(axi_ethernet_0_dma_m_axi_sg_AWADDR),
        .S02_AXI_awburst(axi_ethernet_0_dma_m_axi_sg_AWBURST),
        .S02_AXI_awcache(axi_ethernet_0_dma_m_axi_sg_AWCACHE),
        .S02_AXI_awlen(axi_ethernet_0_dma_m_axi_sg_AWLEN),
        .S02_AXI_awprot(axi_ethernet_0_dma_m_axi_sg_AWPROT),
        .S02_AXI_awready(axi_ethernet_0_dma_m_axi_sg_AWREADY),
        .S02_AXI_awsize(axi_ethernet_0_dma_m_axi_sg_AWSIZE),
        .S02_AXI_awvalid(axi_ethernet_0_dma_m_axi_sg_AWVALID),
        .S02_AXI_bready(axi_ethernet_0_dma_m_axi_sg_BREADY),
        .S02_AXI_bresp(axi_ethernet_0_dma_m_axi_sg_BRESP),
        .S02_AXI_bvalid(axi_ethernet_0_dma_m_axi_sg_BVALID),
        .S02_AXI_rdata(axi_ethernet_0_dma_m_axi_sg_RDATA),
        .S02_AXI_rlast(axi_ethernet_0_dma_m_axi_sg_RLAST),
        .S02_AXI_rready(axi_ethernet_0_dma_m_axi_sg_RREADY),
        .S02_AXI_rresp(axi_ethernet_0_dma_m_axi_sg_RRESP),
        .S02_AXI_rvalid(axi_ethernet_0_dma_m_axi_sg_RVALID),
        .S02_AXI_wdata(axi_ethernet_0_dma_m_axi_sg_WDATA),
        .S02_AXI_wlast(axi_ethernet_0_dma_m_axi_sg_WLAST),
        .S02_AXI_wready(axi_ethernet_0_dma_m_axi_sg_WREADY),
        .S02_AXI_wstrb(axi_ethernet_0_dma_m_axi_sg_WSTRB),
        .S02_AXI_wvalid(axi_ethernet_0_dma_m_axi_sg_WVALID),
        .S03_ACLK(microblaze_0_Clk),
        .S03_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S03_AXI_awaddr(axi_ethernet_0_dma_m_axi_s2mm_AWADDR),
        .S03_AXI_awburst(axi_ethernet_0_dma_m_axi_s2mm_AWBURST),
        .S03_AXI_awcache(axi_ethernet_0_dma_m_axi_s2mm_AWCACHE),
        .S03_AXI_awlen(axi_ethernet_0_dma_m_axi_s2mm_AWLEN),
        .S03_AXI_awprot(axi_ethernet_0_dma_m_axi_s2mm_AWPROT),
        .S03_AXI_awready(axi_ethernet_0_dma_m_axi_s2mm_AWREADY),
        .S03_AXI_awsize(axi_ethernet_0_dma_m_axi_s2mm_AWSIZE),
        .S03_AXI_awvalid(axi_ethernet_0_dma_m_axi_s2mm_AWVALID),
        .S03_AXI_bready(axi_ethernet_0_dma_m_axi_s2mm_BREADY),
        .S03_AXI_bresp(axi_ethernet_0_dma_m_axi_s2mm_BRESP),
        .S03_AXI_bvalid(axi_ethernet_0_dma_m_axi_s2mm_BVALID),
        .S03_AXI_wdata(axi_ethernet_0_dma_m_axi_s2mm_WDATA),
        .S03_AXI_wlast(axi_ethernet_0_dma_m_axi_s2mm_WLAST),
        .S03_AXI_wready(axi_ethernet_0_dma_m_axi_s2mm_WREADY),
        .S03_AXI_wstrb(axi_ethernet_0_dma_m_axi_s2mm_WSTRB),
        .S03_AXI_wvalid(axi_ethernet_0_dma_m_axi_s2mm_WVALID),
        .S04_ACLK(microblaze_0_Clk),
        .S04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S04_AXI_araddr(axi_ethernet_0_dma_m_axi_mm2s_ARADDR),
        .S04_AXI_arburst(axi_ethernet_0_dma_m_axi_mm2s_ARBURST),
        .S04_AXI_arcache(axi_ethernet_0_dma_m_axi_mm2s_ARCACHE),
        .S04_AXI_arlen(axi_ethernet_0_dma_m_axi_mm2s_ARLEN),
        .S04_AXI_arprot(axi_ethernet_0_dma_m_axi_mm2s_ARPROT),
        .S04_AXI_arready(axi_ethernet_0_dma_m_axi_mm2s_ARREADY),
        .S04_AXI_arsize(axi_ethernet_0_dma_m_axi_mm2s_ARSIZE),
        .S04_AXI_arvalid(axi_ethernet_0_dma_m_axi_mm2s_ARVALID),
        .S04_AXI_rdata(axi_ethernet_0_dma_m_axi_mm2s_RDATA),
        .S04_AXI_rlast(axi_ethernet_0_dma_m_axi_mm2s_RLAST),
        .S04_AXI_rready(axi_ethernet_0_dma_m_axi_mm2s_RREADY),
        .S04_AXI_rresp(axi_ethernet_0_dma_m_axi_mm2s_RRESP),
        .S04_AXI_rvalid(axi_ethernet_0_dma_m_axi_mm2s_RVALID));
mb_subsystem_axi_timer_0_0 axi_timer_0
       (.capturetrig0(GND_1),
        .capturetrig1(GND_1),
        .freeze(GND_1),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_0_axi_periph_m01_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(microblaze_0_axi_periph_m01_axi_ARREADY),
        .s_axi_arvalid(microblaze_0_axi_periph_m01_axi_ARVALID),
        .s_axi_awaddr(microblaze_0_axi_periph_m01_axi_AWADDR),
        .s_axi_awready(microblaze_0_axi_periph_m01_axi_AWREADY),
        .s_axi_awvalid(microblaze_0_axi_periph_m01_axi_AWVALID),
        .s_axi_bready(microblaze_0_axi_periph_m01_axi_BREADY),
        .s_axi_bresp(microblaze_0_axi_periph_m01_axi_BRESP),
        .s_axi_bvalid(microblaze_0_axi_periph_m01_axi_BVALID),
        .s_axi_rdata(microblaze_0_axi_periph_m01_axi_RDATA),
        .s_axi_rready(microblaze_0_axi_periph_m01_axi_RREADY),
        .s_axi_rresp(microblaze_0_axi_periph_m01_axi_RRESP),
        .s_axi_rvalid(microblaze_0_axi_periph_m01_axi_RVALID),
        .s_axi_wdata(microblaze_0_axi_periph_m01_axi_WDATA),
        .s_axi_wready(microblaze_0_axi_periph_m01_axi_WREADY),
        .s_axi_wstrb(microblaze_0_axi_periph_m01_axi_WSTRB),
        .s_axi_wvalid(microblaze_0_axi_periph_m01_axi_WVALID));
mb_subsystem_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_uart_RxD),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_0_axi_periph_m02_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(microblaze_0_axi_periph_m02_axi_ARREADY),
        .s_axi_arvalid(microblaze_0_axi_periph_m02_axi_ARVALID),
        .s_axi_awaddr(microblaze_0_axi_periph_m02_axi_AWADDR),
        .s_axi_awready(microblaze_0_axi_periph_m02_axi_AWREADY),
        .s_axi_awvalid(microblaze_0_axi_periph_m02_axi_AWVALID),
        .s_axi_bready(microblaze_0_axi_periph_m02_axi_BREADY),
        .s_axi_bresp(microblaze_0_axi_periph_m02_axi_BRESP),
        .s_axi_bvalid(microblaze_0_axi_periph_m02_axi_BVALID),
        .s_axi_rdata(microblaze_0_axi_periph_m02_axi_RDATA),
        .s_axi_rready(microblaze_0_axi_periph_m02_axi_RREADY),
        .s_axi_rresp(microblaze_0_axi_periph_m02_axi_RRESP),
        .s_axi_rvalid(microblaze_0_axi_periph_m02_axi_RVALID),
        .s_axi_wdata(microblaze_0_axi_periph_m02_axi_WDATA),
        .s_axi_wready(microblaze_0_axi_periph_m02_axi_WREADY),
        .s_axi_wstrb(microblaze_0_axi_periph_m02_axi_WSTRB),
        .s_axi_wvalid(microblaze_0_axi_periph_m02_axi_WVALID),
        .tx(axi_uartlite_0_uart_TxD));
mb_subsystem_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(axi_bram_ctrl_0_bram_porta_ADDR),
        .addrb(axi_bram_ctrl_0_bram_portb_ADDR),
        .clka(axi_bram_ctrl_0_bram_porta_CLK),
        .clkb(axi_bram_ctrl_0_bram_portb_CLK),
        .dina(axi_bram_ctrl_0_bram_porta_DIN),
        .dinb(axi_bram_ctrl_0_bram_portb_DIN),
        .douta(axi_bram_ctrl_0_bram_porta_DOUT),
        .doutb(axi_bram_ctrl_0_bram_portb_DOUT),
        .ena(axi_bram_ctrl_0_bram_porta_EN),
        .enb(axi_bram_ctrl_0_bram_portb_EN),
        .rsta(axi_bram_ctrl_0_bram_porta_RST),
        .rstb(axi_bram_ctrl_0_bram_portb_RST),
        .wea(axi_bram_ctrl_0_bram_porta_WE),
        .web(axi_bram_ctrl_0_bram_portb_WE));
mb_subsystem_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(microblaze_0_Clk),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
mb_subsystem_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_0_debug_CLK),
        .Dbg_Reg_En_0(microblaze_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_0_debug_RST),
        .Dbg_Shift_0(microblaze_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_0_debug_TDI),
        .Dbg_TDO_0(microblaze_0_debug_TDO),
        .Dbg_Update_0(microblaze_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
(* BMM_INFO_PROCESSOR = "microblaze-le > mb_subsystem microblaze_0_local_memory/dlmb_bram_if_cntlr mb_subsystem axi_bram_ctrl_0" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   mb_subsystem_microblaze_0_0 microblaze_0
       (.Byte_Enable(microblaze_0_dlmb_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_dlmb_CE),
        .DReady(microblaze_0_dlmb_READY),
        .DUE(microblaze_0_dlmb_UE),
        .DWait(microblaze_0_dlmb_WAIT),
        .D_AS(microblaze_0_dlmb_ADDRSTROBE),
        .Data_Addr(microblaze_0_dlmb_ABUS),
        .Data_Read(microblaze_0_dlmb_READDBUS),
        .Data_Write(microblaze_0_dlmb_WRITEDBUS),
        .Dbg_Capture(microblaze_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_0_debug_CLK),
        .Dbg_Reg_En(microblaze_0_debug_REG_EN),
        .Dbg_Shift(microblaze_0_debug_SHIFT),
        .Dbg_TDI(microblaze_0_debug_TDI),
        .Dbg_TDO(microblaze_0_debug_TDO),
        .Dbg_Update(microblaze_0_debug_UPDATE),
        .Debug_Rst(microblaze_0_debug_RST),
        .ICE(microblaze_0_ilmb_CE),
        .IFetch(microblaze_0_ilmb_READSTROBE),
        .IReady(microblaze_0_ilmb_READY),
        .IUE(microblaze_0_ilmb_UE),
        .IWAIT(microblaze_0_ilmb_WAIT),
        .I_AS(microblaze_0_ilmb_ADDRSTROBE),
        .Instr(microblaze_0_ilmb_READDBUS),
        .Instr_Addr(microblaze_0_ilmb_ABUS),
        .Interrupt(microblaze_0_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_0_interrupt_ACK),
        .Interrupt_Address({microblaze_0_interrupt_ADDRESS[31],microblaze_0_interrupt_ADDRESS[30],microblaze_0_interrupt_ADDRESS[29],microblaze_0_interrupt_ADDRESS[28],microblaze_0_interrupt_ADDRESS[27],microblaze_0_interrupt_ADDRESS[26],microblaze_0_interrupt_ADDRESS[25],microblaze_0_interrupt_ADDRESS[24],microblaze_0_interrupt_ADDRESS[23],microblaze_0_interrupt_ADDRESS[22],microblaze_0_interrupt_ADDRESS[21],microblaze_0_interrupt_ADDRESS[20],microblaze_0_interrupt_ADDRESS[19],microblaze_0_interrupt_ADDRESS[18],microblaze_0_interrupt_ADDRESS[17],microblaze_0_interrupt_ADDRESS[16],microblaze_0_interrupt_ADDRESS[15],microblaze_0_interrupt_ADDRESS[14],microblaze_0_interrupt_ADDRESS[13],microblaze_0_interrupt_ADDRESS[12],microblaze_0_interrupt_ADDRESS[11],microblaze_0_interrupt_ADDRESS[10],microblaze_0_interrupt_ADDRESS[9],microblaze_0_interrupt_ADDRESS[8],microblaze_0_interrupt_ADDRESS[7],microblaze_0_interrupt_ADDRESS[6],microblaze_0_interrupt_ADDRESS[5],microblaze_0_interrupt_ADDRESS[4],microblaze_0_interrupt_ADDRESS[3],microblaze_0_interrupt_ADDRESS[2],microblaze_0_interrupt_ADDRESS[1],microblaze_0_interrupt_ADDRESS[0]}),
        .M_AXI_DC_ARADDR(microblaze_0_m_axi_dc_ARADDR),
        .M_AXI_DC_ARBURST(microblaze_0_m_axi_dc_ARBURST),
        .M_AXI_DC_ARCACHE(microblaze_0_m_axi_dc_ARCACHE),
        .M_AXI_DC_ARLEN(microblaze_0_m_axi_dc_ARLEN),
        .M_AXI_DC_ARLOCK(microblaze_0_m_axi_dc_ARLOCK),
        .M_AXI_DC_ARPROT(microblaze_0_m_axi_dc_ARPROT),
        .M_AXI_DC_ARQOS(microblaze_0_m_axi_dc_ARQOS),
        .M_AXI_DC_ARREADY(microblaze_0_m_axi_dc_ARREADY),
        .M_AXI_DC_ARSIZE(microblaze_0_m_axi_dc_ARSIZE),
        .M_AXI_DC_ARVALID(microblaze_0_m_axi_dc_ARVALID),
        .M_AXI_DC_AWADDR(microblaze_0_m_axi_dc_AWADDR),
        .M_AXI_DC_AWBURST(microblaze_0_m_axi_dc_AWBURST),
        .M_AXI_DC_AWCACHE(microblaze_0_m_axi_dc_AWCACHE),
        .M_AXI_DC_AWLEN(microblaze_0_m_axi_dc_AWLEN),
        .M_AXI_DC_AWLOCK(microblaze_0_m_axi_dc_AWLOCK),
        .M_AXI_DC_AWPROT(microblaze_0_m_axi_dc_AWPROT),
        .M_AXI_DC_AWQOS(microblaze_0_m_axi_dc_AWQOS),
        .M_AXI_DC_AWREADY(microblaze_0_m_axi_dc_AWREADY),
        .M_AXI_DC_AWSIZE(microblaze_0_m_axi_dc_AWSIZE),
        .M_AXI_DC_AWVALID(microblaze_0_m_axi_dc_AWVALID),
        .M_AXI_DC_BID(GND_1),
        .M_AXI_DC_BREADY(microblaze_0_m_axi_dc_BREADY),
        .M_AXI_DC_BRESP(microblaze_0_m_axi_dc_BRESP),
        .M_AXI_DC_BVALID(microblaze_0_m_axi_dc_BVALID),
        .M_AXI_DC_RDATA(microblaze_0_m_axi_dc_RDATA),
        .M_AXI_DC_RID(GND_1),
        .M_AXI_DC_RLAST(microblaze_0_m_axi_dc_RLAST),
        .M_AXI_DC_RREADY(microblaze_0_m_axi_dc_RREADY),
        .M_AXI_DC_RRESP(microblaze_0_m_axi_dc_RRESP),
        .M_AXI_DC_RVALID(microblaze_0_m_axi_dc_RVALID),
        .M_AXI_DC_WDATA(microblaze_0_m_axi_dc_WDATA),
        .M_AXI_DC_WLAST(microblaze_0_m_axi_dc_WLAST),
        .M_AXI_DC_WREADY(microblaze_0_m_axi_dc_WREADY),
        .M_AXI_DC_WSTRB(microblaze_0_m_axi_dc_WSTRB),
        .M_AXI_DC_WVALID(microblaze_0_m_axi_dc_WVALID),
        .M_AXI_DP_ARADDR(microblaze_0_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_axi_dp_WVALID),
        .M_AXI_IC_ARADDR(microblaze_0_m_axi_ic_ARADDR),
        .M_AXI_IC_ARBURST(microblaze_0_m_axi_ic_ARBURST),
        .M_AXI_IC_ARCACHE(microblaze_0_m_axi_ic_ARCACHE),
        .M_AXI_IC_ARLEN(microblaze_0_m_axi_ic_ARLEN),
        .M_AXI_IC_ARLOCK(microblaze_0_m_axi_ic_ARLOCK),
        .M_AXI_IC_ARPROT(microblaze_0_m_axi_ic_ARPROT),
        .M_AXI_IC_ARQOS(microblaze_0_m_axi_ic_ARQOS),
        .M_AXI_IC_ARREADY(microblaze_0_m_axi_ic_ARREADY),
        .M_AXI_IC_ARSIZE(microblaze_0_m_axi_ic_ARSIZE),
        .M_AXI_IC_ARVALID(microblaze_0_m_axi_ic_ARVALID),
        .M_AXI_IC_AWREADY(GND_1),
        .M_AXI_IC_BID(GND_1),
        .M_AXI_IC_BRESP({GND_1,GND_1}),
        .M_AXI_IC_BVALID(GND_1),
        .M_AXI_IC_RDATA(microblaze_0_m_axi_ic_RDATA),
        .M_AXI_IC_RID(GND_1),
        .M_AXI_IC_RLAST(microblaze_0_m_axi_ic_RLAST),
        .M_AXI_IC_RREADY(microblaze_0_m_axi_ic_RREADY),
        .M_AXI_IC_RRESP(microblaze_0_m_axi_ic_RRESP),
        .M_AXI_IC_RVALID(microblaze_0_m_axi_ic_RVALID),
        .M_AXI_IC_WREADY(GND_1),
        .Read_Strobe(microblaze_0_dlmb_READSTROBE),
        .Reset(proc_sys_reset_1_mb_reset),
        .Write_Strobe(microblaze_0_dlmb_WRITESTROBE));
mb_subsystem_microblaze_0_axi_intc_0 microblaze_0_axi_intc
       (.interrupt_address(microblaze_0_interrupt_ADDRESS),
        .intr(microblaze_0_intr),
        .irq(microblaze_0_interrupt_INTERRUPT),
        .processor_ack({microblaze_0_interrupt_ACK[0],microblaze_0_interrupt_ACK[1]}),
        .processor_clk(microblaze_0_Clk),
        .processor_rst(proc_sys_reset_1_mb_reset),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_0_intc_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(microblaze_0_intc_axi_ARREADY),
        .s_axi_arvalid(microblaze_0_intc_axi_ARVALID),
        .s_axi_awaddr(microblaze_0_intc_axi_AWADDR),
        .s_axi_awready(microblaze_0_intc_axi_AWREADY),
        .s_axi_awvalid(microblaze_0_intc_axi_AWVALID),
        .s_axi_bready(microblaze_0_intc_axi_BREADY),
        .s_axi_bresp(microblaze_0_intc_axi_BRESP),
        .s_axi_bvalid(microblaze_0_intc_axi_BVALID),
        .s_axi_rdata(microblaze_0_intc_axi_RDATA),
        .s_axi_rready(microblaze_0_intc_axi_RREADY),
        .s_axi_rresp(microblaze_0_intc_axi_RRESP),
        .s_axi_rvalid(microblaze_0_intc_axi_RVALID),
        .s_axi_wdata(microblaze_0_intc_axi_WDATA),
        .s_axi_wready(microblaze_0_intc_axi_WREADY),
        .s_axi_wstrb(microblaze_0_intc_axi_WSTRB),
        .s_axi_wvalid(microblaze_0_intc_axi_WVALID));
mb_subsystem_microblaze_0_axi_periph_0 microblaze_0_axi_periph
       (.ACLK(microblaze_0_Clk),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(microblaze_0_intc_axi_ARADDR),
        .M00_AXI_arready(microblaze_0_intc_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_0_intc_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_0_intc_axi_AWADDR),
        .M00_AXI_awready(microblaze_0_intc_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_0_intc_axi_AWVALID),
        .M00_AXI_bready(microblaze_0_intc_axi_BREADY),
        .M00_AXI_bresp(microblaze_0_intc_axi_BRESP),
        .M00_AXI_bvalid(microblaze_0_intc_axi_BVALID),
        .M00_AXI_rdata(microblaze_0_intc_axi_RDATA),
        .M00_AXI_rready(microblaze_0_intc_axi_RREADY),
        .M00_AXI_rresp(microblaze_0_intc_axi_RRESP),
        .M00_AXI_rvalid(microblaze_0_intc_axi_RVALID),
        .M00_AXI_wdata(microblaze_0_intc_axi_WDATA),
        .M00_AXI_wready(microblaze_0_intc_axi_WREADY),
        .M00_AXI_wstrb(microblaze_0_intc_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_0_intc_axi_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M01_AXI_araddr(microblaze_0_axi_periph_m01_axi_ARADDR),
        .M01_AXI_arready(microblaze_0_axi_periph_m01_axi_ARREADY),
        .M01_AXI_arvalid(microblaze_0_axi_periph_m01_axi_ARVALID),
        .M01_AXI_awaddr(microblaze_0_axi_periph_m01_axi_AWADDR),
        .M01_AXI_awready(microblaze_0_axi_periph_m01_axi_AWREADY),
        .M01_AXI_awvalid(microblaze_0_axi_periph_m01_axi_AWVALID),
        .M01_AXI_bready(microblaze_0_axi_periph_m01_axi_BREADY),
        .M01_AXI_bresp(microblaze_0_axi_periph_m01_axi_BRESP),
        .M01_AXI_bvalid(microblaze_0_axi_periph_m01_axi_BVALID),
        .M01_AXI_rdata(microblaze_0_axi_periph_m01_axi_RDATA),
        .M01_AXI_rready(microblaze_0_axi_periph_m01_axi_RREADY),
        .M01_AXI_rresp(microblaze_0_axi_periph_m01_axi_RRESP),
        .M01_AXI_rvalid(microblaze_0_axi_periph_m01_axi_RVALID),
        .M01_AXI_wdata(microblaze_0_axi_periph_m01_axi_WDATA),
        .M01_AXI_wready(microblaze_0_axi_periph_m01_axi_WREADY),
        .M01_AXI_wstrb(microblaze_0_axi_periph_m01_axi_WSTRB),
        .M01_AXI_wvalid(microblaze_0_axi_periph_m01_axi_WVALID),
        .M02_ACLK(microblaze_0_Clk),
        .M02_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M02_AXI_araddr(microblaze_0_axi_periph_m02_axi_ARADDR),
        .M02_AXI_arready(microblaze_0_axi_periph_m02_axi_ARREADY),
        .M02_AXI_arvalid(microblaze_0_axi_periph_m02_axi_ARVALID),
        .M02_AXI_awaddr(microblaze_0_axi_periph_m02_axi_AWADDR),
        .M02_AXI_awready(microblaze_0_axi_periph_m02_axi_AWREADY),
        .M02_AXI_awvalid(microblaze_0_axi_periph_m02_axi_AWVALID),
        .M02_AXI_bready(microblaze_0_axi_periph_m02_axi_BREADY),
        .M02_AXI_bresp(microblaze_0_axi_periph_m02_axi_BRESP),
        .M02_AXI_bvalid(microblaze_0_axi_periph_m02_axi_BVALID),
        .M02_AXI_rdata(microblaze_0_axi_periph_m02_axi_RDATA),
        .M02_AXI_rready(microblaze_0_axi_periph_m02_axi_RREADY),
        .M02_AXI_rresp(microblaze_0_axi_periph_m02_axi_RRESP),
        .M02_AXI_rvalid(microblaze_0_axi_periph_m02_axi_RVALID),
        .M02_AXI_wdata(microblaze_0_axi_periph_m02_axi_WDATA),
        .M02_AXI_wready(microblaze_0_axi_periph_m02_axi_WREADY),
        .M02_AXI_wstrb(microblaze_0_axi_periph_m02_axi_WSTRB),
        .M02_AXI_wvalid(microblaze_0_axi_periph_m02_axi_WVALID),
        .M03_ACLK(microblaze_0_Clk),
        .M03_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M03_AXI_araddr(microblaze_0_axi_periph_m03_axi_ARADDR),
        .M03_AXI_arready(microblaze_0_axi_periph_m03_axi_ARREADY),
        .M03_AXI_arvalid(microblaze_0_axi_periph_m03_axi_ARVALID),
        .M03_AXI_awaddr(microblaze_0_axi_periph_m03_axi_AWADDR),
        .M03_AXI_awready(microblaze_0_axi_periph_m03_axi_AWREADY),
        .M03_AXI_awvalid(microblaze_0_axi_periph_m03_axi_AWVALID),
        .M03_AXI_bready(microblaze_0_axi_periph_m03_axi_BREADY),
        .M03_AXI_bresp(microblaze_0_axi_periph_m03_axi_BRESP),
        .M03_AXI_bvalid(microblaze_0_axi_periph_m03_axi_BVALID),
        .M03_AXI_rdata(microblaze_0_axi_periph_m03_axi_RDATA),
        .M03_AXI_rready(microblaze_0_axi_periph_m03_axi_RREADY),
        .M03_AXI_rresp(microblaze_0_axi_periph_m03_axi_RRESP),
        .M03_AXI_rvalid(microblaze_0_axi_periph_m03_axi_RVALID),
        .M03_AXI_wdata(microblaze_0_axi_periph_m03_axi_WDATA),
        .M03_AXI_wready(microblaze_0_axi_periph_m03_axi_WREADY),
        .M03_AXI_wvalid(microblaze_0_axi_periph_m03_axi_WVALID),
        .M04_ACLK(microblaze_0_Clk),
        .M04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M04_AXI_araddr(microblaze_0_axi_periph_m04_axi_ARADDR),
        .M04_AXI_arready(microblaze_0_axi_periph_m04_axi_ARREADY),
        .M04_AXI_arvalid(microblaze_0_axi_periph_m04_axi_ARVALID),
        .M04_AXI_awaddr(microblaze_0_axi_periph_m04_axi_AWADDR),
        .M04_AXI_awready(microblaze_0_axi_periph_m04_axi_AWREADY),
        .M04_AXI_awvalid(microblaze_0_axi_periph_m04_axi_AWVALID),
        .M04_AXI_bready(microblaze_0_axi_periph_m04_axi_BREADY),
        .M04_AXI_bresp(microblaze_0_axi_periph_m04_axi_BRESP),
        .M04_AXI_bvalid(microblaze_0_axi_periph_m04_axi_BVALID),
        .M04_AXI_rdata(microblaze_0_axi_periph_m04_axi_RDATA),
        .M04_AXI_rready(microblaze_0_axi_periph_m04_axi_RREADY),
        .M04_AXI_rresp(microblaze_0_axi_periph_m04_axi_RRESP),
        .M04_AXI_rvalid(microblaze_0_axi_periph_m04_axi_RVALID),
        .M04_AXI_wdata(microblaze_0_axi_periph_m04_axi_WDATA),
        .M04_AXI_wready(microblaze_0_axi_periph_m04_axi_WREADY),
        .M04_AXI_wstrb(microblaze_0_axi_periph_m04_axi_WSTRB),
        .M04_AXI_wvalid(microblaze_0_axi_periph_m04_axi_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(microblaze_0_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_0_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_0_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_0_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_0_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_0_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_0_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_0_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_0_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_0_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_0_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_0_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_0_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_0_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_0_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_0_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_0_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_0_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_0_axi_dp_WVALID));
microblaze_0_local_memory_imp_14Y43Z9 microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_dlmb_ABUS),
        .DLMB_addrstrobe(microblaze_0_dlmb_ADDRSTROBE),
        .DLMB_be(microblaze_0_dlmb_BE),
        .DLMB_ce(microblaze_0_dlmb_CE),
        .DLMB_readdbus(microblaze_0_dlmb_READDBUS),
        .DLMB_readstrobe(microblaze_0_dlmb_READSTROBE),
        .DLMB_ready(microblaze_0_dlmb_READY),
        .DLMB_ue(microblaze_0_dlmb_UE),
        .DLMB_wait(microblaze_0_dlmb_WAIT),
        .DLMB_writedbus(microblaze_0_dlmb_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_dlmb_WRITESTROBE),
        .ILMB_abus(microblaze_0_ilmb_ABUS),
        .ILMB_addrstrobe(microblaze_0_ilmb_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ilmb_CE),
        .ILMB_readdbus(microblaze_0_ilmb_READDBUS),
        .ILMB_readstrobe(microblaze_0_ilmb_READSTROBE),
        .ILMB_ready(microblaze_0_ilmb_READY),
        .ILMB_ue(microblaze_0_ilmb_UE),
        .ILMB_wait(microblaze_0_ilmb_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_Rst(proc_sys_reset_1_bus_struct_reset));
mb_subsystem_microblaze_0_xlconcat_0 microblaze_0_xlconcat
       (.In0(axi_ethernet_0_interrupt),
        .In1(axi_ethernet_0_dma_s2mm_introut),
        .In2(axi_ethernet_0_dma_mm2s_introut),
        .In3(axi_uartlite_0_interrupt),
        .In4(axi_timer_0_interrupt),
        .dout(microblaze_0_intr));
mb_subsystem_mig_7series_0_0 mig_7series_0
       (.aresetn(proc_sys_reset_1_peripheral_aresetn),
        .ddr3_addr(mig_7series_0_ddr3_ADDR),
        .ddr3_ba(mig_7series_0_ddr3_BA),
        .ddr3_cas_n(mig_7series_0_ddr3_CAS_N),
        .ddr3_ck_n(mig_7series_0_ddr3_CK_N),
        .ddr3_ck_p(mig_7series_0_ddr3_CK_P),
        .ddr3_cke(mig_7series_0_ddr3_CKE),
        .ddr3_cs_n(mig_7series_0_ddr3_CS_N),
        .ddr3_dm(mig_7series_0_ddr3_DM),
        .ddr3_dq(DDR3_dq[63:0]),
        .ddr3_dqs_n(DDR3_dqs_n[7:0]),
        .ddr3_dqs_p(DDR3_dqs_p[7:0]),
        .ddr3_odt(mig_7series_0_ddr3_ODT),
        .ddr3_ras_n(mig_7series_0_ddr3_RAS_N),
        .ddr3_reset_n(mig_7series_0_ddr3_RESET_N),
        .ddr3_we_n(mig_7series_0_ddr3_WE_N),
        .s_axi_araddr(axi_mem_intercon_m00_axi_ARADDR),
        .s_axi_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .s_axi_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .s_axi_arid(axi_mem_intercon_m00_axi_ARID),
        .s_axi_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .s_axi_arlock(axi_mem_intercon_m00_axi_ARLOCK),
        .s_axi_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .s_axi_arqos(axi_mem_intercon_m00_axi_ARQOS),
        .s_axi_arready(axi_mem_intercon_m00_axi_ARREADY),
        .s_axi_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .s_axi_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_m00_axi_AWADDR),
        .s_axi_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .s_axi_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .s_axi_awid(axi_mem_intercon_m00_axi_AWID),
        .s_axi_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .s_axi_awlock(axi_mem_intercon_m00_axi_AWLOCK),
        .s_axi_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .s_axi_awqos(axi_mem_intercon_m00_axi_AWQOS),
        .s_axi_awready(axi_mem_intercon_m00_axi_AWREADY),
        .s_axi_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .s_axi_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .s_axi_bid(axi_mem_intercon_m00_axi_BID),
        .s_axi_bready(axi_mem_intercon_m00_axi_BREADY),
        .s_axi_bresp(axi_mem_intercon_m00_axi_BRESP),
        .s_axi_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .s_axi_rdata(axi_mem_intercon_m00_axi_RDATA),
        .s_axi_rid(axi_mem_intercon_m00_axi_RID),
        .s_axi_rlast(axi_mem_intercon_m00_axi_RLAST),
        .s_axi_rready(axi_mem_intercon_m00_axi_RREADY),
        .s_axi_rresp(axi_mem_intercon_m00_axi_RRESP),
        .s_axi_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .s_axi_wdata(axi_mem_intercon_m00_axi_WDATA),
        .s_axi_wlast(axi_mem_intercon_m00_axi_WLAST),
        .s_axi_wready(axi_mem_intercon_m00_axi_WREADY),
        .s_axi_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .sys_clk_n(sys_clk_n_1),
        .sys_clk_p(sys_clk_p_1),
        .sys_rst(reset_1),
        .ui_addn_clk_0(mig_7series_0_ui_addn_clk_0),
        .ui_clk(microblaze_0_Clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
mb_subsystem_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(VCC_1),
        .bus_struct_reset(proc_sys_reset_1_bus_struct_reset),
        .dcm_locked(VCC_1),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(proc_sys_reset_1_mb_reset),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
endmodule

module mb_subsystem_axi_mem_intercon_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arprot,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awlen,
    S03_AXI_awprot,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    S04_ACLK,
    S04_ARESETN,
    S04_AXI_araddr,
    S04_AXI_arburst,
    S04_AXI_arcache,
    S04_AXI_arlen,
    S04_AXI_arprot,
    S04_AXI_arready,
    S04_AXI_arsize,
    S04_AXI_arvalid,
    S04_AXI_rdata,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_rvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [29:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [29:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [2:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [2:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [2:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [2:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input [0:0]S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arprot;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input [0:0]S03_ARESETN;
  input [31:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awprot;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  input [31:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;
  input S04_ACLK;
  input [0:0]S04_ARESETN;
  input [31:0]S04_AXI_araddr;
  input [1:0]S04_AXI_arburst;
  input [3:0]S04_AXI_arcache;
  input [7:0]S04_AXI_arlen;
  input [2:0]S04_AXI_arprot;
  output S04_AXI_arready;
  input [2:0]S04_AXI_arsize;
  input S04_AXI_arvalid;
  output [31:0]S04_AXI_rdata;
  output S04_AXI_rlast;
  input S04_AXI_rready;
  output [1:0]S04_AXI_rresp;
  output S04_AXI_rvalid;

  wire GND_1;
  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire S01_ACLK_1;
  wire [0:0]S01_ARESETN_1;
  wire S02_ACLK_1;
  wire [0:0]S02_ARESETN_1;
  wire S03_ACLK_1;
  wire [0:0]S03_ARESETN_1;
  wire S04_ACLK_1;
  wire [0:0]S04_ARESETN_1;
  wire VCC_1;
  wire axi_mem_intercon_ACLK_net;
  wire [0:0]axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_ARLEN;
  wire axi_mem_intercon_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARQOS;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire axi_mem_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire axi_mem_intercon_to_s00_couplers_RLAST;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s01_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s01_couplers_ARLEN;
  wire axi_mem_intercon_to_s01_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARQOS;
  wire axi_mem_intercon_to_s01_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARSIZE;
  wire axi_mem_intercon_to_s01_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_RDATA;
  wire axi_mem_intercon_to_s01_couplers_RLAST;
  wire axi_mem_intercon_to_s01_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s01_couplers_RRESP;
  wire axi_mem_intercon_to_s01_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s02_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s02_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s02_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s02_couplers_ARPROT;
  wire axi_mem_intercon_to_s02_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s02_couplers_ARSIZE;
  wire axi_mem_intercon_to_s02_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s02_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s02_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s02_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s02_couplers_AWPROT;
  wire axi_mem_intercon_to_s02_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s02_couplers_AWSIZE;
  wire axi_mem_intercon_to_s02_couplers_AWVALID;
  wire axi_mem_intercon_to_s02_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s02_couplers_BRESP;
  wire axi_mem_intercon_to_s02_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_RDATA;
  wire axi_mem_intercon_to_s02_couplers_RLAST;
  wire axi_mem_intercon_to_s02_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s02_couplers_RRESP;
  wire axi_mem_intercon_to_s02_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_WDATA;
  wire axi_mem_intercon_to_s02_couplers_WLAST;
  wire axi_mem_intercon_to_s02_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s02_couplers_WSTRB;
  wire axi_mem_intercon_to_s02_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s03_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s03_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s03_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s03_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s03_couplers_AWPROT;
  wire axi_mem_intercon_to_s03_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s03_couplers_AWSIZE;
  wire axi_mem_intercon_to_s03_couplers_AWVALID;
  wire axi_mem_intercon_to_s03_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s03_couplers_BRESP;
  wire axi_mem_intercon_to_s03_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s03_couplers_WDATA;
  wire axi_mem_intercon_to_s03_couplers_WLAST;
  wire axi_mem_intercon_to_s03_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s03_couplers_WSTRB;
  wire axi_mem_intercon_to_s03_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s04_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s04_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s04_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s04_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s04_couplers_ARPROT;
  wire axi_mem_intercon_to_s04_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s04_couplers_ARSIZE;
  wire axi_mem_intercon_to_s04_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s04_couplers_RDATA;
  wire axi_mem_intercon_to_s04_couplers_RLAST;
  wire axi_mem_intercon_to_s04_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s04_couplers_RRESP;
  wire axi_mem_intercon_to_s04_couplers_RVALID;
  wire [29:0]m00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARID;
  wire [7:0]m00_couplers_to_axi_mem_intercon_ARLEN;
  wire m00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARQOS;
  wire m00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARSIZE;
  wire m00_couplers_to_axi_mem_intercon_ARVALID;
  wire [29:0]m00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWID;
  wire [7:0]m00_couplers_to_axi_mem_intercon_AWLEN;
  wire m00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWQOS;
  wire m00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWSIZE;
  wire m00_couplers_to_axi_mem_intercon_AWVALID;
  wire [2:0]m00_couplers_to_axi_mem_intercon_BID;
  wire m00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_BRESP;
  wire m00_couplers_to_axi_mem_intercon_BVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_RDATA;
  wire [2:0]m00_couplers_to_axi_mem_intercon_RID;
  wire m00_couplers_to_axi_mem_intercon_RLAST;
  wire m00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_RRESP;
  wire m00_couplers_to_axi_mem_intercon_RVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_WDATA;
  wire m00_couplers_to_axi_mem_intercon_WLAST;
  wire m00_couplers_to_axi_mem_intercon_WREADY;
  wire [3:0]m00_couplers_to_axi_mem_intercon_WSTRB;
  wire m00_couplers_to_axi_mem_intercon_WVALID;
  wire [15:0]m01_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]m01_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]m01_couplers_to_axi_mem_intercon_ARCACHE;
  wire [2:0]m01_couplers_to_axi_mem_intercon_ARID;
  wire [7:0]m01_couplers_to_axi_mem_intercon_ARLEN;
  wire [0:0]m01_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]m01_couplers_to_axi_mem_intercon_ARPROT;
  wire m01_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]m01_couplers_to_axi_mem_intercon_ARSIZE;
  wire m01_couplers_to_axi_mem_intercon_ARVALID;
  wire [15:0]m01_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]m01_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]m01_couplers_to_axi_mem_intercon_AWCACHE;
  wire [2:0]m01_couplers_to_axi_mem_intercon_AWID;
  wire [7:0]m01_couplers_to_axi_mem_intercon_AWLEN;
  wire [0:0]m01_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]m01_couplers_to_axi_mem_intercon_AWPROT;
  wire m01_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]m01_couplers_to_axi_mem_intercon_AWSIZE;
  wire m01_couplers_to_axi_mem_intercon_AWVALID;
  wire [2:0]m01_couplers_to_axi_mem_intercon_BID;
  wire m01_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]m01_couplers_to_axi_mem_intercon_BRESP;
  wire m01_couplers_to_axi_mem_intercon_BVALID;
  wire [31:0]m01_couplers_to_axi_mem_intercon_RDATA;
  wire [2:0]m01_couplers_to_axi_mem_intercon_RID;
  wire m01_couplers_to_axi_mem_intercon_RLAST;
  wire m01_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]m01_couplers_to_axi_mem_intercon_RRESP;
  wire m01_couplers_to_axi_mem_intercon_RVALID;
  wire [31:0]m01_couplers_to_axi_mem_intercon_WDATA;
  wire m01_couplers_to_axi_mem_intercon_WLAST;
  wire m01_couplers_to_axi_mem_intercon_WREADY;
  wire [3:0]m01_couplers_to_axi_mem_intercon_WSTRB;
  wire m01_couplers_to_axi_mem_intercon_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [31:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [3:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [31:0]s04_couplers_to_xbar_ARADDR;
  wire [1:0]s04_couplers_to_xbar_ARBURST;
  wire [3:0]s04_couplers_to_xbar_ARCACHE;
  wire [7:0]s04_couplers_to_xbar_ARLEN;
  wire [0:0]s04_couplers_to_xbar_ARLOCK;
  wire [2:0]s04_couplers_to_xbar_ARPROT;
  wire [3:0]s04_couplers_to_xbar_ARQOS;
  wire [4:4]s04_couplers_to_xbar_ARREADY;
  wire [2:0]s04_couplers_to_xbar_ARSIZE;
  wire s04_couplers_to_xbar_ARVALID;
  wire [159:128]s04_couplers_to_xbar_RDATA;
  wire [4:4]s04_couplers_to_xbar_RLAST;
  wire s04_couplers_to_xbar_RREADY;
  wire [9:8]s04_couplers_to_xbar_RRESP;
  wire [4:4]s04_couplers_to_xbar_RVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [2:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [2:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [5:3]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [5:3]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [2:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [2:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [4:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [159:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[29:0] = m00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[2:0] = m00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[29:0] = m00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[2:0] = m00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_intercon_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[15:0] = m01_couplers_to_axi_mem_intercon_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_mem_intercon_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_axi_mem_intercon_ARCACHE;
  assign M01_AXI_arid[2:0] = m01_couplers_to_axi_mem_intercon_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_mem_intercon_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_axi_mem_intercon_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_mem_intercon_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_mem_intercon_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_mem_intercon_ARVALID;
  assign M01_AXI_awaddr[15:0] = m01_couplers_to_axi_mem_intercon_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_mem_intercon_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_axi_mem_intercon_AWCACHE;
  assign M01_AXI_awid[2:0] = m01_couplers_to_axi_mem_intercon_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_mem_intercon_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_axi_mem_intercon_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_mem_intercon_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_mem_intercon_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_mem_intercon_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_mem_intercon_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_mem_intercon_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_mem_intercon_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_mem_intercon_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_mem_intercon_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN[0];
  assign S01_AXI_arready = axi_mem_intercon_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_mem_intercon_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_intercon_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_intercon_to_s01_couplers_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN[0];
  assign S02_AXI_arready = axi_mem_intercon_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_mem_intercon_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_mem_intercon_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_mem_intercon_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = axi_mem_intercon_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_mem_intercon_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_mem_intercon_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_mem_intercon_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_mem_intercon_to_s02_couplers_WREADY;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN[0];
  assign S03_AXI_awready = axi_mem_intercon_to_s03_couplers_AWREADY;
  assign S03_AXI_bresp[1:0] = axi_mem_intercon_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = axi_mem_intercon_to_s03_couplers_BVALID;
  assign S03_AXI_wready = axi_mem_intercon_to_s03_couplers_WREADY;
  assign S04_ACLK_1 = S04_ACLK;
  assign S04_ARESETN_1 = S04_ARESETN[0];
  assign S04_AXI_arready = axi_mem_intercon_to_s04_couplers_ARREADY;
  assign S04_AXI_rdata[31:0] = axi_mem_intercon_to_s04_couplers_RDATA;
  assign S04_AXI_rlast = axi_mem_intercon_to_s04_couplers_RLAST;
  assign S04_AXI_rresp[1:0] = axi_mem_intercon_to_s04_couplers_RRESP;
  assign S04_AXI_rvalid = axi_mem_intercon_to_s04_couplers_RVALID;
  assign axi_mem_intercon_ACLK_net = ACLK;
  assign axi_mem_intercon_ARESETN_net = ARESETN[0];
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_mem_intercon_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign axi_mem_intercon_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_mem_intercon_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_mem_intercon_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_mem_intercon_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_mem_intercon_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_mem_intercon_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_mem_intercon_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_mem_intercon_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign axi_mem_intercon_to_s03_couplers_AWADDR = S03_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign axi_mem_intercon_to_s03_couplers_BREADY = S03_AXI_bready;
  assign axi_mem_intercon_to_s03_couplers_WDATA = S03_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign axi_mem_intercon_to_s03_couplers_WSTRB = S03_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign axi_mem_intercon_to_s04_couplers_ARADDR = S04_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s04_couplers_ARBURST = S04_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s04_couplers_ARCACHE = S04_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s04_couplers_ARLEN = S04_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s04_couplers_ARPROT = S04_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s04_couplers_ARSIZE = S04_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s04_couplers_ARVALID = S04_AXI_arvalid;
  assign axi_mem_intercon_to_s04_couplers_RREADY = S04_AXI_rready;
  assign m00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_intercon_BID = M00_AXI_bid[2:0];
  assign m00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_mem_intercon_RID = M00_AXI_rid[2:0];
  assign m00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_mem_intercon_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_mem_intercon_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_mem_intercon_BID = M01_AXI_bid[2:0];
  assign m01_couplers_to_axi_mem_intercon_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_mem_intercon_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_mem_intercon_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_mem_intercon_RID = M01_AXI_rid[2:0];
  assign m01_couplers_to_axi_mem_intercon_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_mem_intercon_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_mem_intercon_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_mem_intercon_WREADY = M01_AXI_wready;
GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
m00_couplers_imp_1GJPW6P m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_intercon_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(axi_mem_intercon_ACLK_net),
        .S_ARESETN(axi_mem_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_1B903JL m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(m01_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(m01_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(m01_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(m01_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(m01_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(m01_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(m01_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(m01_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(m01_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(m01_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(axi_mem_intercon_ACLK_net),
        .S_ARESETN(axi_mem_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
s00_couplers_imp_18GFZZ6 s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
s01_couplers_imp_1ESMO0Y s01_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s01_couplers_RVALID));
s02_couplers_imp_13IIEZM s02_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s02_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s02_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s02_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s02_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s02_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s02_couplers_WVALID));
s03_couplers_imp_16IT9CY s03_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_to_s03_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s03_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s03_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s03_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s03_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s03_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s03_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s03_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s03_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s03_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s03_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s03_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s03_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s03_couplers_WVALID));
s04_couplers_imp_1Y33GF6 s04_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s04_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s04_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s04_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s04_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s04_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s04_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s04_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s04_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s04_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s04_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s04_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s04_couplers_to_xbar_RLAST),
        .M_AXI_rready(s04_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s04_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s04_couplers_to_xbar_RVALID),
        .S_ACLK(S04_ACLK_1),
        .S_ARESETN(S04_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s04_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s04_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s04_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s04_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s04_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s04_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s04_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s04_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s04_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s04_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s04_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s04_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s04_couplers_RVALID));
mb_subsystem_xbar_1 xbar
       (.aclk(axi_mem_intercon_ACLK_net),
        .aresetn(axi_mem_intercon_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s04_couplers_to_xbar_ARADDR,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s04_couplers_to_xbar_ARBURST,GND_1,GND_1,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s04_couplers_to_xbar_ARCACHE,GND_1,GND_1,GND_1,GND_1,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arlen({s04_couplers_to_xbar_ARLEN,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s04_couplers_to_xbar_ARLOCK,GND_1,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s04_couplers_to_xbar_ARPROT,GND_1,GND_1,GND_1,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s04_couplers_to_xbar_ARQOS,GND_1,GND_1,GND_1,GND_1,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s04_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[3],s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s04_couplers_to_xbar_ARSIZE,GND_1,GND_1,GND_1,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s04_couplers_to_xbar_ARVALID,GND_1,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s03_couplers_to_xbar_AWADDR,s02_couplers_to_xbar_AWADDR,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({GND_1,GND_1,s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,GND_1,GND_1,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({GND_1,GND_1,GND_1,GND_1,s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awlen({GND_1,VCC_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({GND_1,s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,GND_1,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({GND_1,GND_1,GND_1,s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1,s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({GND_1,GND_1,GND_1,s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({GND_1,s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,GND_1,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({GND_1,s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,GND_1,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s04_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[127:96],s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s04_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[3],s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s04_couplers_to_xbar_RREADY,GND_1,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s04_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[7:6],s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s04_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[3],s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({GND_1,s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,GND_1,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({GND_1,GND_1,GND_1,GND_1,s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({GND_1,s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,GND_1,s00_couplers_to_xbar_WVALID}));
endmodule

module mb_subsystem_microblaze_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [4:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [4:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [3:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [3:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [9:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [9:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [17:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [17:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire M02_ACLK_1;
  wire [0:0]M02_ARESETN_1;
  wire M03_ACLK_1;
  wire [0:0]M03_ARESETN_1;
  wire M04_ACLK_1;
  wire [0:0]M04_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire [8:0]m00_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [8:0]m00_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_WVALID;
  wire [4:0]m01_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [4:0]m01_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_WVALID;
  wire [3:0]m02_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [3:0]m02_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m02_couplers_to_microblaze_0_axi_periph_WVALID;
  wire [9:0]m03_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [9:0]m03_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [0:0]m03_couplers_to_microblaze_0_axi_periph_WVALID;
  wire [17:0]m04_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [17:0]m04_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m04_couplers_to_microblaze_0_axi_periph_WVALID;
  wire microblaze_0_axi_periph_ACLK_net;
  wire [0:0]microblaze_0_axi_periph_ARESETN_net;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_0_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_0_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_0_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_0_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_0_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [19:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[8:0] = m00_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_microblaze_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[4:0] = m01_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[4:0] = m01_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_microblaze_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN[0];
  assign M02_AXI_araddr[3:0] = m02_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[3:0] = m02_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_microblaze_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M03_AXI_araddr[9:0] = m03_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[9:0] = m03_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M03_AXI_wvalid[0] = m03_couplers_to_microblaze_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN[0];
  assign M04_AXI_araddr[17:0] = m04_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[17:0] = m04_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_microblaze_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready[0] = microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = microblaze_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = microblaze_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = microblaze_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_microblaze_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_microblaze_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_microblaze_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_microblaze_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_microblaze_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_microblaze_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_microblaze_0_axi_periph_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_microblaze_0_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_microblaze_0_axi_periph_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_microblaze_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_microblaze_0_axi_periph_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_microblaze_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_microblaze_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_microblaze_0_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_microblaze_0_axi_periph_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_microblaze_0_axi_periph_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_microblaze_0_axi_periph_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_microblaze_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_microblaze_0_axi_periph_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_microblaze_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_microblaze_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_microblaze_0_axi_periph_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_microblaze_0_axi_periph_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_microblaze_0_axi_periph_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_microblaze_0_axi_periph_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_microblaze_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_microblaze_0_axi_periph_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_microblaze_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_microblaze_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_microblaze_0_axi_periph_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_microblaze_0_axi_periph_WREADY = M04_AXI_wready[0];
  assign microblaze_0_axi_periph_ACLK_net = ACLK;
  assign microblaze_0_axi_periph_ARESETN_net = ARESETN[0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign microblaze_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign microblaze_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign microblaze_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
m00_couplers_imp_RDG37U m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[8:0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[8:0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_WMA45M m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[36:32]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[36:32]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
m02_couplers_imp_LCSAMI m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[67:64]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[67:64]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
m03_couplers_imp_PHON4A m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wvalid(m03_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR[105:96]),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR[105:96]),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
m04_couplers_imp_H7JY2Y m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR[145:128]),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR[145:128]),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
s00_couplers_imp_ZIFSM1 s00_couplers
       (.M_ACLK(microblaze_0_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(microblaze_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_0_axi_periph_to_s00_couplers_WVALID));
mb_subsystem_xbar_0 xbar
       (.aclk(microblaze_0_axi_periph_ACLK_net),
        .aresetn(microblaze_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[15:12],xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module microblaze_0_local_memory_imp_14Y43Z9
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    LMB_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input [0:0]LMB_Rst;

  wire GND_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;
  wire [0:0]proc_sys_reset_1_bus_struct_reset;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  assign proc_sys_reset_1_bus_struct_reset = LMB_Rst[0];
GND GND
       (.G(GND_1));
(* BMM_INFO_ADDRESS_SPACE = "byte  0x0 32 >  mb_subsystem microblaze_0_local_memory/lmb_bram" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   mb_subsystem_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(proc_sys_reset_1_bus_struct_reset),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
mb_subsystem_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(proc_sys_reset_1_bus_struct_reset),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
mb_subsystem_ilmb_bram_if_cntlr_1 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(proc_sys_reset_1_bus_struct_reset),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
mb_subsystem_ilmb_v10_1 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({GND_1,GND_1,GND_1,GND_1}),
        .M_DBus({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(GND_1),
        .SYS_Rst(proc_sys_reset_1_bus_struct_reset),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
mb_subsystem_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule

module s00_couplers_imp_18GFZZ6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;
  wire [31:0]s00_regslice_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_regslice_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_regslice_to_s00_data_fifo_ARCACHE;
  wire [7:0]s00_regslice_to_s00_data_fifo_ARLEN;
  wire [0:0]s00_regslice_to_s00_data_fifo_ARLOCK;
  wire [2:0]s00_regslice_to_s00_data_fifo_ARPROT;
  wire [3:0]s00_regslice_to_s00_data_fifo_ARQOS;
  wire s00_regslice_to_s00_data_fifo_ARREADY;
  wire [3:0]s00_regslice_to_s00_data_fifo_ARREGION;
  wire [2:0]s00_regslice_to_s00_data_fifo_ARSIZE;
  wire s00_regslice_to_s00_data_fifo_ARVALID;
  wire [31:0]s00_regslice_to_s00_data_fifo_AWADDR;
  wire [1:0]s00_regslice_to_s00_data_fifo_AWBURST;
  wire [3:0]s00_regslice_to_s00_data_fifo_AWCACHE;
  wire [7:0]s00_regslice_to_s00_data_fifo_AWLEN;
  wire [0:0]s00_regslice_to_s00_data_fifo_AWLOCK;
  wire [2:0]s00_regslice_to_s00_data_fifo_AWPROT;
  wire [3:0]s00_regslice_to_s00_data_fifo_AWQOS;
  wire s00_regslice_to_s00_data_fifo_AWREADY;
  wire [3:0]s00_regslice_to_s00_data_fifo_AWREGION;
  wire [2:0]s00_regslice_to_s00_data_fifo_AWSIZE;
  wire s00_regslice_to_s00_data_fifo_AWVALID;
  wire s00_regslice_to_s00_data_fifo_BREADY;
  wire [1:0]s00_regslice_to_s00_data_fifo_BRESP;
  wire s00_regslice_to_s00_data_fifo_BVALID;
  wire [31:0]s00_regslice_to_s00_data_fifo_RDATA;
  wire s00_regslice_to_s00_data_fifo_RLAST;
  wire s00_regslice_to_s00_data_fifo_RREADY;
  wire [1:0]s00_regslice_to_s00_data_fifo_RRESP;
  wire s00_regslice_to_s00_data_fifo_RVALID;
  wire [31:0]s00_regslice_to_s00_data_fifo_WDATA;
  wire s00_regslice_to_s00_data_fifo_WLAST;
  wire s00_regslice_to_s00_data_fifo_WREADY;
  wire [3:0]s00_regslice_to_s00_data_fifo_WSTRB;
  wire s00_regslice_to_s00_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
GND GND
       (.G(GND_1));
mb_subsystem_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_regslice_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_regslice_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_regslice_to_s00_data_fifo_ARCACHE),
        .s_axi_arlen(s00_regslice_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(s00_regslice_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(s00_regslice_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(s00_regslice_to_s00_data_fifo_ARQOS),
        .s_axi_arready(s00_regslice_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(s00_regslice_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(s00_regslice_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_regslice_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(s00_regslice_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(s00_regslice_to_s00_data_fifo_AWCACHE),
        .s_axi_awlen(s00_regslice_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(s00_regslice_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(s00_regslice_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(s00_regslice_to_s00_data_fifo_AWQOS),
        .s_axi_awready(s00_regslice_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(s00_regslice_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(s00_regslice_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_regslice_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_regslice_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_regslice_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_regslice_to_s00_data_fifo_RDATA),
        .s_axi_rlast(s00_regslice_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_regslice_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_regslice_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_regslice_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_regslice_to_s00_data_fifo_WDATA),
        .s_axi_wlast(s00_regslice_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_regslice_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_regslice_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_regslice_to_s00_data_fifo_WVALID));
mb_subsystem_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_data_fifo_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_data_fifo_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(s00_regslice_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(s00_regslice_to_s00_data_fifo_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_data_fifo_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_data_fifo_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(s00_regslice_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(s00_regslice_to_s00_data_fifo_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_data_fifo_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_data_fifo_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_data_fifo_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_data_fifo_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_data_fifo_RLAST),
        .m_axi_rready(s00_regslice_to_s00_data_fifo_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_data_fifo_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_data_fifo_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_data_fifo_WLAST),
        .m_axi_wready(s00_regslice_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_data_fifo_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_ZIFSM1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s01_couplers_imp_1ESMO0Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [31:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [31:0]s01_regslice_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_regslice_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARCACHE;
  wire [7:0]s01_regslice_to_s01_data_fifo_ARLEN;
  wire [0:0]s01_regslice_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_regslice_to_s01_data_fifo_ARPROT;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARQOS;
  wire s01_regslice_to_s01_data_fifo_ARREADY;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARREGION;
  wire [2:0]s01_regslice_to_s01_data_fifo_ARSIZE;
  wire s01_regslice_to_s01_data_fifo_ARVALID;
  wire [31:0]s01_regslice_to_s01_data_fifo_RDATA;
  wire s01_regslice_to_s01_data_fifo_RLAST;
  wire s01_regslice_to_s01_data_fifo_RREADY;
  wire [1:0]s01_regslice_to_s01_data_fifo_RRESP;
  wire s01_regslice_to_s01_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
GND GND
       (.G(GND_1));
mb_subsystem_s01_data_fifo_0 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .s_axi_araddr(s01_regslice_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_regslice_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_regslice_to_s01_data_fifo_ARCACHE),
        .s_axi_arlen(s01_regslice_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(s01_regslice_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(s01_regslice_to_s01_data_fifo_ARPROT),
        .s_axi_arqos(s01_regslice_to_s01_data_fifo_ARQOS),
        .s_axi_arready(s01_regslice_to_s01_data_fifo_ARREADY),
        .s_axi_arregion(s01_regslice_to_s01_data_fifo_ARREGION),
        .s_axi_arsize(s01_regslice_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_s01_data_fifo_ARVALID),
        .s_axi_rdata(s01_regslice_to_s01_data_fifo_RDATA),
        .s_axi_rlast(s01_regslice_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_regslice_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_regslice_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_regslice_to_s01_data_fifo_RVALID));
mb_subsystem_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_s01_data_fifo_ARADDR),
        .m_axi_arburst(s01_regslice_to_s01_data_fifo_ARBURST),
        .m_axi_arcache(s01_regslice_to_s01_data_fifo_ARCACHE),
        .m_axi_arlen(s01_regslice_to_s01_data_fifo_ARLEN),
        .m_axi_arlock(s01_regslice_to_s01_data_fifo_ARLOCK),
        .m_axi_arprot(s01_regslice_to_s01_data_fifo_ARPROT),
        .m_axi_arqos(s01_regslice_to_s01_data_fifo_ARQOS),
        .m_axi_arready(s01_regslice_to_s01_data_fifo_ARREADY),
        .m_axi_arregion(s01_regslice_to_s01_data_fifo_ARREGION),
        .m_axi_arsize(s01_regslice_to_s01_data_fifo_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_s01_data_fifo_ARVALID),
        .m_axi_rdata(s01_regslice_to_s01_data_fifo_RDATA),
        .m_axi_rlast(s01_regslice_to_s01_data_fifo_RLAST),
        .m_axi_rready(s01_regslice_to_s01_data_fifo_RREADY),
        .m_axi_rresp(s01_regslice_to_s01_data_fifo_RRESP),
        .m_axi_rvalid(s01_regslice_to_s01_data_fifo_RVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID));
endmodule

module s02_couplers_imp_13IIEZM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s02_couplers_to_s02_regslice_ARADDR;
  wire [1:0]s02_couplers_to_s02_regslice_ARBURST;
  wire [3:0]s02_couplers_to_s02_regslice_ARCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_ARLEN;
  wire [2:0]s02_couplers_to_s02_regslice_ARPROT;
  wire s02_couplers_to_s02_regslice_ARREADY;
  wire [2:0]s02_couplers_to_s02_regslice_ARSIZE;
  wire s02_couplers_to_s02_regslice_ARVALID;
  wire [31:0]s02_couplers_to_s02_regslice_AWADDR;
  wire [1:0]s02_couplers_to_s02_regslice_AWBURST;
  wire [3:0]s02_couplers_to_s02_regslice_AWCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_AWLEN;
  wire [2:0]s02_couplers_to_s02_regslice_AWPROT;
  wire s02_couplers_to_s02_regslice_AWREADY;
  wire [2:0]s02_couplers_to_s02_regslice_AWSIZE;
  wire s02_couplers_to_s02_regslice_AWVALID;
  wire s02_couplers_to_s02_regslice_BREADY;
  wire [1:0]s02_couplers_to_s02_regslice_BRESP;
  wire s02_couplers_to_s02_regslice_BVALID;
  wire [31:0]s02_couplers_to_s02_regslice_RDATA;
  wire s02_couplers_to_s02_regslice_RLAST;
  wire s02_couplers_to_s02_regslice_RREADY;
  wire [1:0]s02_couplers_to_s02_regslice_RRESP;
  wire s02_couplers_to_s02_regslice_RVALID;
  wire [31:0]s02_couplers_to_s02_regslice_WDATA;
  wire s02_couplers_to_s02_regslice_WLAST;
  wire s02_couplers_to_s02_regslice_WREADY;
  wire [3:0]s02_couplers_to_s02_regslice_WSTRB;
  wire s02_couplers_to_s02_regslice_WVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_ARADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_ARBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_ARLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_ARLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARQOS;
  wire s02_data_fifo_to_s02_couplers_ARREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARSIZE;
  wire s02_data_fifo_to_s02_couplers_ARVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_AWADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_AWBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_AWLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_AWLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWQOS;
  wire s02_data_fifo_to_s02_couplers_AWREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWSIZE;
  wire s02_data_fifo_to_s02_couplers_AWVALID;
  wire s02_data_fifo_to_s02_couplers_BREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_BRESP;
  wire s02_data_fifo_to_s02_couplers_BVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_RDATA;
  wire s02_data_fifo_to_s02_couplers_RLAST;
  wire s02_data_fifo_to_s02_couplers_RREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_RRESP;
  wire s02_data_fifo_to_s02_couplers_RVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_WDATA;
  wire s02_data_fifo_to_s02_couplers_WLAST;
  wire s02_data_fifo_to_s02_couplers_WREADY;
  wire [3:0]s02_data_fifo_to_s02_couplers_WSTRB;
  wire s02_data_fifo_to_s02_couplers_WVALID;
  wire [31:0]s02_regslice_to_s02_data_fifo_ARADDR;
  wire [1:0]s02_regslice_to_s02_data_fifo_ARBURST;
  wire [3:0]s02_regslice_to_s02_data_fifo_ARCACHE;
  wire [7:0]s02_regslice_to_s02_data_fifo_ARLEN;
  wire [0:0]s02_regslice_to_s02_data_fifo_ARLOCK;
  wire [2:0]s02_regslice_to_s02_data_fifo_ARPROT;
  wire [3:0]s02_regslice_to_s02_data_fifo_ARQOS;
  wire s02_regslice_to_s02_data_fifo_ARREADY;
  wire [3:0]s02_regslice_to_s02_data_fifo_ARREGION;
  wire [2:0]s02_regslice_to_s02_data_fifo_ARSIZE;
  wire s02_regslice_to_s02_data_fifo_ARVALID;
  wire [31:0]s02_regslice_to_s02_data_fifo_AWADDR;
  wire [1:0]s02_regslice_to_s02_data_fifo_AWBURST;
  wire [3:0]s02_regslice_to_s02_data_fifo_AWCACHE;
  wire [7:0]s02_regslice_to_s02_data_fifo_AWLEN;
  wire [0:0]s02_regslice_to_s02_data_fifo_AWLOCK;
  wire [2:0]s02_regslice_to_s02_data_fifo_AWPROT;
  wire [3:0]s02_regslice_to_s02_data_fifo_AWQOS;
  wire s02_regslice_to_s02_data_fifo_AWREADY;
  wire [3:0]s02_regslice_to_s02_data_fifo_AWREGION;
  wire [2:0]s02_regslice_to_s02_data_fifo_AWSIZE;
  wire s02_regslice_to_s02_data_fifo_AWVALID;
  wire s02_regslice_to_s02_data_fifo_BREADY;
  wire [1:0]s02_regslice_to_s02_data_fifo_BRESP;
  wire s02_regslice_to_s02_data_fifo_BVALID;
  wire [31:0]s02_regslice_to_s02_data_fifo_RDATA;
  wire s02_regslice_to_s02_data_fifo_RLAST;
  wire s02_regslice_to_s02_data_fifo_RREADY;
  wire [1:0]s02_regslice_to_s02_data_fifo_RRESP;
  wire s02_regslice_to_s02_data_fifo_RVALID;
  wire [31:0]s02_regslice_to_s02_data_fifo_WDATA;
  wire s02_regslice_to_s02_data_fifo_WLAST;
  wire s02_regslice_to_s02_data_fifo_WREADY;
  wire [3:0]s02_regslice_to_s02_data_fifo_WSTRB;
  wire s02_regslice_to_s02_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s02_data_fifo_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_data_fifo_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_data_fifo_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_data_fifo_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_data_fifo_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_data_fifo_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_data_fifo_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_data_fifo_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_data_fifo_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s02_data_fifo_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_data_fifo_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_data_fifo_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s02_data_fifo_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_data_fifo_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_data_fifo_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_data_fifo_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_data_fifo_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_data_fifo_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_data_fifo_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_data_fifo_to_s02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s02_data_fifo_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_data_fifo_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s02_data_fifo_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_data_fifo_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s02_couplers_to_s02_regslice_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_regslice_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_regslice_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_regslice_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_regslice_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_regslice_WREADY;
  assign s02_couplers_to_s02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_s02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_regslice_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_regslice_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_regslice_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_regslice_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_regslice_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_s02_regslice_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_s02_regslice_WVALID = S_AXI_wvalid;
  assign s02_data_fifo_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_data_fifo_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_data_fifo_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_data_fifo_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_data_fifo_to_s02_couplers_RDATA = M_AXI_rdata[31:0];
  assign s02_data_fifo_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_data_fifo_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_data_fifo_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_data_fifo_to_s02_couplers_WREADY = M_AXI_wready;
GND GND
       (.G(GND_1));
mb_subsystem_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s02_data_fifo_to_s02_couplers_ARADDR),
        .m_axi_arburst(s02_data_fifo_to_s02_couplers_ARBURST),
        .m_axi_arcache(s02_data_fifo_to_s02_couplers_ARCACHE),
        .m_axi_arlen(s02_data_fifo_to_s02_couplers_ARLEN),
        .m_axi_arlock(s02_data_fifo_to_s02_couplers_ARLOCK),
        .m_axi_arprot(s02_data_fifo_to_s02_couplers_ARPROT),
        .m_axi_arqos(s02_data_fifo_to_s02_couplers_ARQOS),
        .m_axi_arready(s02_data_fifo_to_s02_couplers_ARREADY),
        .m_axi_arsize(s02_data_fifo_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(s02_data_fifo_to_s02_couplers_ARVALID),
        .m_axi_awaddr(s02_data_fifo_to_s02_couplers_AWADDR),
        .m_axi_awburst(s02_data_fifo_to_s02_couplers_AWBURST),
        .m_axi_awcache(s02_data_fifo_to_s02_couplers_AWCACHE),
        .m_axi_awlen(s02_data_fifo_to_s02_couplers_AWLEN),
        .m_axi_awlock(s02_data_fifo_to_s02_couplers_AWLOCK),
        .m_axi_awprot(s02_data_fifo_to_s02_couplers_AWPROT),
        .m_axi_awqos(s02_data_fifo_to_s02_couplers_AWQOS),
        .m_axi_awready(s02_data_fifo_to_s02_couplers_AWREADY),
        .m_axi_awsize(s02_data_fifo_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(s02_data_fifo_to_s02_couplers_AWVALID),
        .m_axi_bready(s02_data_fifo_to_s02_couplers_BREADY),
        .m_axi_bresp(s02_data_fifo_to_s02_couplers_BRESP),
        .m_axi_bvalid(s02_data_fifo_to_s02_couplers_BVALID),
        .m_axi_rdata(s02_data_fifo_to_s02_couplers_RDATA),
        .m_axi_rlast(s02_data_fifo_to_s02_couplers_RLAST),
        .m_axi_rready(s02_data_fifo_to_s02_couplers_RREADY),
        .m_axi_rresp(s02_data_fifo_to_s02_couplers_RRESP),
        .m_axi_rvalid(s02_data_fifo_to_s02_couplers_RVALID),
        .m_axi_wdata(s02_data_fifo_to_s02_couplers_WDATA),
        .m_axi_wlast(s02_data_fifo_to_s02_couplers_WLAST),
        .m_axi_wready(s02_data_fifo_to_s02_couplers_WREADY),
        .m_axi_wstrb(s02_data_fifo_to_s02_couplers_WSTRB),
        .m_axi_wvalid(s02_data_fifo_to_s02_couplers_WVALID),
        .s_axi_araddr(s02_regslice_to_s02_data_fifo_ARADDR),
        .s_axi_arburst(s02_regslice_to_s02_data_fifo_ARBURST),
        .s_axi_arcache(s02_regslice_to_s02_data_fifo_ARCACHE),
        .s_axi_arlen(s02_regslice_to_s02_data_fifo_ARLEN),
        .s_axi_arlock(s02_regslice_to_s02_data_fifo_ARLOCK),
        .s_axi_arprot(s02_regslice_to_s02_data_fifo_ARPROT),
        .s_axi_arqos(s02_regslice_to_s02_data_fifo_ARQOS),
        .s_axi_arready(s02_regslice_to_s02_data_fifo_ARREADY),
        .s_axi_arregion(s02_regslice_to_s02_data_fifo_ARREGION),
        .s_axi_arsize(s02_regslice_to_s02_data_fifo_ARSIZE),
        .s_axi_arvalid(s02_regslice_to_s02_data_fifo_ARVALID),
        .s_axi_awaddr(s02_regslice_to_s02_data_fifo_AWADDR),
        .s_axi_awburst(s02_regslice_to_s02_data_fifo_AWBURST),
        .s_axi_awcache(s02_regslice_to_s02_data_fifo_AWCACHE),
        .s_axi_awlen(s02_regslice_to_s02_data_fifo_AWLEN),
        .s_axi_awlock(s02_regslice_to_s02_data_fifo_AWLOCK),
        .s_axi_awprot(s02_regslice_to_s02_data_fifo_AWPROT),
        .s_axi_awqos(s02_regslice_to_s02_data_fifo_AWQOS),
        .s_axi_awready(s02_regslice_to_s02_data_fifo_AWREADY),
        .s_axi_awregion(s02_regslice_to_s02_data_fifo_AWREGION),
        .s_axi_awsize(s02_regslice_to_s02_data_fifo_AWSIZE),
        .s_axi_awvalid(s02_regslice_to_s02_data_fifo_AWVALID),
        .s_axi_bready(s02_regslice_to_s02_data_fifo_BREADY),
        .s_axi_bresp(s02_regslice_to_s02_data_fifo_BRESP),
        .s_axi_bvalid(s02_regslice_to_s02_data_fifo_BVALID),
        .s_axi_rdata(s02_regslice_to_s02_data_fifo_RDATA),
        .s_axi_rlast(s02_regslice_to_s02_data_fifo_RLAST),
        .s_axi_rready(s02_regslice_to_s02_data_fifo_RREADY),
        .s_axi_rresp(s02_regslice_to_s02_data_fifo_RRESP),
        .s_axi_rvalid(s02_regslice_to_s02_data_fifo_RVALID),
        .s_axi_wdata(s02_regslice_to_s02_data_fifo_WDATA),
        .s_axi_wlast(s02_regslice_to_s02_data_fifo_WLAST),
        .s_axi_wready(s02_regslice_to_s02_data_fifo_WREADY),
        .s_axi_wstrb(s02_regslice_to_s02_data_fifo_WSTRB),
        .s_axi_wvalid(s02_regslice_to_s02_data_fifo_WVALID));
mb_subsystem_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s02_regslice_to_s02_data_fifo_ARADDR),
        .m_axi_arburst(s02_regslice_to_s02_data_fifo_ARBURST),
        .m_axi_arcache(s02_regslice_to_s02_data_fifo_ARCACHE),
        .m_axi_arlen(s02_regslice_to_s02_data_fifo_ARLEN),
        .m_axi_arlock(s02_regslice_to_s02_data_fifo_ARLOCK),
        .m_axi_arprot(s02_regslice_to_s02_data_fifo_ARPROT),
        .m_axi_arqos(s02_regslice_to_s02_data_fifo_ARQOS),
        .m_axi_arready(s02_regslice_to_s02_data_fifo_ARREADY),
        .m_axi_arregion(s02_regslice_to_s02_data_fifo_ARREGION),
        .m_axi_arsize(s02_regslice_to_s02_data_fifo_ARSIZE),
        .m_axi_arvalid(s02_regslice_to_s02_data_fifo_ARVALID),
        .m_axi_awaddr(s02_regslice_to_s02_data_fifo_AWADDR),
        .m_axi_awburst(s02_regslice_to_s02_data_fifo_AWBURST),
        .m_axi_awcache(s02_regslice_to_s02_data_fifo_AWCACHE),
        .m_axi_awlen(s02_regslice_to_s02_data_fifo_AWLEN),
        .m_axi_awlock(s02_regslice_to_s02_data_fifo_AWLOCK),
        .m_axi_awprot(s02_regslice_to_s02_data_fifo_AWPROT),
        .m_axi_awqos(s02_regslice_to_s02_data_fifo_AWQOS),
        .m_axi_awready(s02_regslice_to_s02_data_fifo_AWREADY),
        .m_axi_awregion(s02_regslice_to_s02_data_fifo_AWREGION),
        .m_axi_awsize(s02_regslice_to_s02_data_fifo_AWSIZE),
        .m_axi_awvalid(s02_regslice_to_s02_data_fifo_AWVALID),
        .m_axi_bready(s02_regslice_to_s02_data_fifo_BREADY),
        .m_axi_bresp(s02_regslice_to_s02_data_fifo_BRESP),
        .m_axi_bvalid(s02_regslice_to_s02_data_fifo_BVALID),
        .m_axi_rdata(s02_regslice_to_s02_data_fifo_RDATA),
        .m_axi_rlast(s02_regslice_to_s02_data_fifo_RLAST),
        .m_axi_rready(s02_regslice_to_s02_data_fifo_RREADY),
        .m_axi_rresp(s02_regslice_to_s02_data_fifo_RRESP),
        .m_axi_rvalid(s02_regslice_to_s02_data_fifo_RVALID),
        .m_axi_wdata(s02_regslice_to_s02_data_fifo_WDATA),
        .m_axi_wlast(s02_regslice_to_s02_data_fifo_WLAST),
        .m_axi_wready(s02_regslice_to_s02_data_fifo_WREADY),
        .m_axi_wstrb(s02_regslice_to_s02_data_fifo_WSTRB),
        .m_axi_wvalid(s02_regslice_to_s02_data_fifo_WVALID),
        .s_axi_araddr(s02_couplers_to_s02_regslice_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_regslice_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_regslice_ARCACHE),
        .s_axi_arlen(s02_couplers_to_s02_regslice_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(s02_couplers_to_s02_regslice_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(s02_couplers_to_s02_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s02_couplers_to_s02_regslice_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_regslice_ARVALID),
        .s_axi_awaddr(s02_couplers_to_s02_regslice_AWADDR),
        .s_axi_awburst(s02_couplers_to_s02_regslice_AWBURST),
        .s_axi_awcache(s02_couplers_to_s02_regslice_AWCACHE),
        .s_axi_awlen(s02_couplers_to_s02_regslice_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s02_couplers_to_s02_regslice_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s02_couplers_to_s02_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s02_couplers_to_s02_regslice_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_s02_regslice_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_regslice_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_regslice_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_regslice_BVALID),
        .s_axi_rdata(s02_couplers_to_s02_regslice_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_regslice_RLAST),
        .s_axi_rready(s02_couplers_to_s02_regslice_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_regslice_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_regslice_RVALID),
        .s_axi_wdata(s02_couplers_to_s02_regslice_WDATA),
        .s_axi_wlast(s02_couplers_to_s02_regslice_WLAST),
        .s_axi_wready(s02_couplers_to_s02_regslice_WREADY),
        .s_axi_wstrb(s02_couplers_to_s02_regslice_WSTRB),
        .s_axi_wvalid(s02_couplers_to_s02_regslice_WVALID));
endmodule

module s03_couplers_imp_16IT9CY
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s03_couplers_to_s03_regslice_AWADDR;
  wire [1:0]s03_couplers_to_s03_regslice_AWBURST;
  wire [3:0]s03_couplers_to_s03_regslice_AWCACHE;
  wire [7:0]s03_couplers_to_s03_regslice_AWLEN;
  wire [2:0]s03_couplers_to_s03_regslice_AWPROT;
  wire s03_couplers_to_s03_regslice_AWREADY;
  wire [2:0]s03_couplers_to_s03_regslice_AWSIZE;
  wire s03_couplers_to_s03_regslice_AWVALID;
  wire s03_couplers_to_s03_regslice_BREADY;
  wire [1:0]s03_couplers_to_s03_regslice_BRESP;
  wire s03_couplers_to_s03_regslice_BVALID;
  wire [31:0]s03_couplers_to_s03_regslice_WDATA;
  wire s03_couplers_to_s03_regslice_WLAST;
  wire s03_couplers_to_s03_regslice_WREADY;
  wire [3:0]s03_couplers_to_s03_regslice_WSTRB;
  wire s03_couplers_to_s03_regslice_WVALID;
  wire [31:0]s03_data_fifo_to_s03_couplers_AWADDR;
  wire [1:0]s03_data_fifo_to_s03_couplers_AWBURST;
  wire [3:0]s03_data_fifo_to_s03_couplers_AWCACHE;
  wire [7:0]s03_data_fifo_to_s03_couplers_AWLEN;
  wire [0:0]s03_data_fifo_to_s03_couplers_AWLOCK;
  wire [2:0]s03_data_fifo_to_s03_couplers_AWPROT;
  wire [3:0]s03_data_fifo_to_s03_couplers_AWQOS;
  wire s03_data_fifo_to_s03_couplers_AWREADY;
  wire [2:0]s03_data_fifo_to_s03_couplers_AWSIZE;
  wire s03_data_fifo_to_s03_couplers_AWVALID;
  wire s03_data_fifo_to_s03_couplers_BREADY;
  wire [1:0]s03_data_fifo_to_s03_couplers_BRESP;
  wire s03_data_fifo_to_s03_couplers_BVALID;
  wire [31:0]s03_data_fifo_to_s03_couplers_WDATA;
  wire s03_data_fifo_to_s03_couplers_WLAST;
  wire s03_data_fifo_to_s03_couplers_WREADY;
  wire [3:0]s03_data_fifo_to_s03_couplers_WSTRB;
  wire s03_data_fifo_to_s03_couplers_WVALID;
  wire [31:0]s03_regslice_to_s03_data_fifo_AWADDR;
  wire [1:0]s03_regslice_to_s03_data_fifo_AWBURST;
  wire [3:0]s03_regslice_to_s03_data_fifo_AWCACHE;
  wire [7:0]s03_regslice_to_s03_data_fifo_AWLEN;
  wire [0:0]s03_regslice_to_s03_data_fifo_AWLOCK;
  wire [2:0]s03_regslice_to_s03_data_fifo_AWPROT;
  wire [3:0]s03_regslice_to_s03_data_fifo_AWQOS;
  wire s03_regslice_to_s03_data_fifo_AWREADY;
  wire [3:0]s03_regslice_to_s03_data_fifo_AWREGION;
  wire [2:0]s03_regslice_to_s03_data_fifo_AWSIZE;
  wire s03_regslice_to_s03_data_fifo_AWVALID;
  wire s03_regslice_to_s03_data_fifo_BREADY;
  wire [1:0]s03_regslice_to_s03_data_fifo_BRESP;
  wire s03_regslice_to_s03_data_fifo_BVALID;
  wire [31:0]s03_regslice_to_s03_data_fifo_WDATA;
  wire s03_regslice_to_s03_data_fifo_WLAST;
  wire s03_regslice_to_s03_data_fifo_WREADY;
  wire [3:0]s03_regslice_to_s03_data_fifo_WSTRB;
  wire s03_regslice_to_s03_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_awaddr[31:0] = s03_data_fifo_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s03_data_fifo_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s03_data_fifo_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s03_data_fifo_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = s03_data_fifo_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s03_data_fifo_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s03_data_fifo_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s03_data_fifo_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = s03_data_fifo_to_s03_couplers_AWVALID;
  assign M_AXI_bready = s03_data_fifo_to_s03_couplers_BREADY;
  assign M_AXI_wdata[31:0] = s03_data_fifo_to_s03_couplers_WDATA;
  assign M_AXI_wlast = s03_data_fifo_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s03_data_fifo_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = s03_data_fifo_to_s03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_awready = s03_couplers_to_s03_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_regslice_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_regslice_BVALID;
  assign S_AXI_wready = s03_couplers_to_s03_regslice_WREADY;
  assign s03_couplers_to_s03_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s03_couplers_to_s03_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_regslice_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_regslice_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_regslice_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_s03_regslice_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_s03_regslice_WVALID = S_AXI_wvalid;
  assign s03_data_fifo_to_s03_couplers_AWREADY = M_AXI_awready;
  assign s03_data_fifo_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign s03_data_fifo_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign s03_data_fifo_to_s03_couplers_WREADY = M_AXI_wready;
GND GND
       (.G(GND_1));
mb_subsystem_s03_data_fifo_0 s03_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s03_data_fifo_to_s03_couplers_AWADDR),
        .m_axi_awburst(s03_data_fifo_to_s03_couplers_AWBURST),
        .m_axi_awcache(s03_data_fifo_to_s03_couplers_AWCACHE),
        .m_axi_awlen(s03_data_fifo_to_s03_couplers_AWLEN),
        .m_axi_awlock(s03_data_fifo_to_s03_couplers_AWLOCK),
        .m_axi_awprot(s03_data_fifo_to_s03_couplers_AWPROT),
        .m_axi_awqos(s03_data_fifo_to_s03_couplers_AWQOS),
        .m_axi_awready(s03_data_fifo_to_s03_couplers_AWREADY),
        .m_axi_awsize(s03_data_fifo_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(s03_data_fifo_to_s03_couplers_AWVALID),
        .m_axi_bready(s03_data_fifo_to_s03_couplers_BREADY),
        .m_axi_bresp(s03_data_fifo_to_s03_couplers_BRESP),
        .m_axi_bvalid(s03_data_fifo_to_s03_couplers_BVALID),
        .m_axi_wdata(s03_data_fifo_to_s03_couplers_WDATA),
        .m_axi_wlast(s03_data_fifo_to_s03_couplers_WLAST),
        .m_axi_wready(s03_data_fifo_to_s03_couplers_WREADY),
        .m_axi_wstrb(s03_data_fifo_to_s03_couplers_WSTRB),
        .m_axi_wvalid(s03_data_fifo_to_s03_couplers_WVALID),
        .s_axi_awaddr(s03_regslice_to_s03_data_fifo_AWADDR),
        .s_axi_awburst(s03_regslice_to_s03_data_fifo_AWBURST),
        .s_axi_awcache(s03_regslice_to_s03_data_fifo_AWCACHE),
        .s_axi_awlen(s03_regslice_to_s03_data_fifo_AWLEN),
        .s_axi_awlock(s03_regslice_to_s03_data_fifo_AWLOCK),
        .s_axi_awprot(s03_regslice_to_s03_data_fifo_AWPROT),
        .s_axi_awqos(s03_regslice_to_s03_data_fifo_AWQOS),
        .s_axi_awready(s03_regslice_to_s03_data_fifo_AWREADY),
        .s_axi_awregion(s03_regslice_to_s03_data_fifo_AWREGION),
        .s_axi_awsize(s03_regslice_to_s03_data_fifo_AWSIZE),
        .s_axi_awvalid(s03_regslice_to_s03_data_fifo_AWVALID),
        .s_axi_bready(s03_regslice_to_s03_data_fifo_BREADY),
        .s_axi_bresp(s03_regslice_to_s03_data_fifo_BRESP),
        .s_axi_bvalid(s03_regslice_to_s03_data_fifo_BVALID),
        .s_axi_wdata(s03_regslice_to_s03_data_fifo_WDATA),
        .s_axi_wlast(s03_regslice_to_s03_data_fifo_WLAST),
        .s_axi_wready(s03_regslice_to_s03_data_fifo_WREADY),
        .s_axi_wstrb(s03_regslice_to_s03_data_fifo_WSTRB),
        .s_axi_wvalid(s03_regslice_to_s03_data_fifo_WVALID));
mb_subsystem_s03_regslice_0 s03_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s03_regslice_to_s03_data_fifo_AWADDR),
        .m_axi_awburst(s03_regslice_to_s03_data_fifo_AWBURST),
        .m_axi_awcache(s03_regslice_to_s03_data_fifo_AWCACHE),
        .m_axi_awlen(s03_regslice_to_s03_data_fifo_AWLEN),
        .m_axi_awlock(s03_regslice_to_s03_data_fifo_AWLOCK),
        .m_axi_awprot(s03_regslice_to_s03_data_fifo_AWPROT),
        .m_axi_awqos(s03_regslice_to_s03_data_fifo_AWQOS),
        .m_axi_awready(s03_regslice_to_s03_data_fifo_AWREADY),
        .m_axi_awregion(s03_regslice_to_s03_data_fifo_AWREGION),
        .m_axi_awsize(s03_regslice_to_s03_data_fifo_AWSIZE),
        .m_axi_awvalid(s03_regslice_to_s03_data_fifo_AWVALID),
        .m_axi_bready(s03_regslice_to_s03_data_fifo_BREADY),
        .m_axi_bresp(s03_regslice_to_s03_data_fifo_BRESP),
        .m_axi_bvalid(s03_regslice_to_s03_data_fifo_BVALID),
        .m_axi_wdata(s03_regslice_to_s03_data_fifo_WDATA),
        .m_axi_wlast(s03_regslice_to_s03_data_fifo_WLAST),
        .m_axi_wready(s03_regslice_to_s03_data_fifo_WREADY),
        .m_axi_wstrb(s03_regslice_to_s03_data_fifo_WSTRB),
        .m_axi_wvalid(s03_regslice_to_s03_data_fifo_WVALID),
        .s_axi_awaddr(s03_couplers_to_s03_regslice_AWADDR),
        .s_axi_awburst(s03_couplers_to_s03_regslice_AWBURST),
        .s_axi_awcache(s03_couplers_to_s03_regslice_AWCACHE),
        .s_axi_awlen(s03_couplers_to_s03_regslice_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s03_couplers_to_s03_regslice_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s03_couplers_to_s03_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s03_couplers_to_s03_regslice_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_s03_regslice_AWVALID),
        .s_axi_bready(s03_couplers_to_s03_regslice_BREADY),
        .s_axi_bresp(s03_couplers_to_s03_regslice_BRESP),
        .s_axi_bvalid(s03_couplers_to_s03_regslice_BVALID),
        .s_axi_wdata(s03_couplers_to_s03_regslice_WDATA),
        .s_axi_wlast(s03_couplers_to_s03_regslice_WLAST),
        .s_axi_wready(s03_couplers_to_s03_regslice_WREADY),
        .s_axi_wstrb(s03_couplers_to_s03_regslice_WSTRB),
        .s_axi_wvalid(s03_couplers_to_s03_regslice_WVALID));
endmodule

module s04_couplers_imp_1Y33GF6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s04_couplers_to_s04_regslice_ARADDR;
  wire [1:0]s04_couplers_to_s04_regslice_ARBURST;
  wire [3:0]s04_couplers_to_s04_regslice_ARCACHE;
  wire [7:0]s04_couplers_to_s04_regslice_ARLEN;
  wire [2:0]s04_couplers_to_s04_regslice_ARPROT;
  wire s04_couplers_to_s04_regslice_ARREADY;
  wire [2:0]s04_couplers_to_s04_regslice_ARSIZE;
  wire s04_couplers_to_s04_regslice_ARVALID;
  wire [31:0]s04_couplers_to_s04_regslice_RDATA;
  wire s04_couplers_to_s04_regslice_RLAST;
  wire s04_couplers_to_s04_regslice_RREADY;
  wire [1:0]s04_couplers_to_s04_regslice_RRESP;
  wire s04_couplers_to_s04_regslice_RVALID;
  wire [31:0]s04_data_fifo_to_s04_couplers_ARADDR;
  wire [1:0]s04_data_fifo_to_s04_couplers_ARBURST;
  wire [3:0]s04_data_fifo_to_s04_couplers_ARCACHE;
  wire [7:0]s04_data_fifo_to_s04_couplers_ARLEN;
  wire [0:0]s04_data_fifo_to_s04_couplers_ARLOCK;
  wire [2:0]s04_data_fifo_to_s04_couplers_ARPROT;
  wire [3:0]s04_data_fifo_to_s04_couplers_ARQOS;
  wire s04_data_fifo_to_s04_couplers_ARREADY;
  wire [2:0]s04_data_fifo_to_s04_couplers_ARSIZE;
  wire s04_data_fifo_to_s04_couplers_ARVALID;
  wire [31:0]s04_data_fifo_to_s04_couplers_RDATA;
  wire s04_data_fifo_to_s04_couplers_RLAST;
  wire s04_data_fifo_to_s04_couplers_RREADY;
  wire [1:0]s04_data_fifo_to_s04_couplers_RRESP;
  wire s04_data_fifo_to_s04_couplers_RVALID;
  wire [31:0]s04_regslice_to_s04_data_fifo_ARADDR;
  wire [1:0]s04_regslice_to_s04_data_fifo_ARBURST;
  wire [3:0]s04_regslice_to_s04_data_fifo_ARCACHE;
  wire [7:0]s04_regslice_to_s04_data_fifo_ARLEN;
  wire [0:0]s04_regslice_to_s04_data_fifo_ARLOCK;
  wire [2:0]s04_regslice_to_s04_data_fifo_ARPROT;
  wire [3:0]s04_regslice_to_s04_data_fifo_ARQOS;
  wire s04_regslice_to_s04_data_fifo_ARREADY;
  wire [3:0]s04_regslice_to_s04_data_fifo_ARREGION;
  wire [2:0]s04_regslice_to_s04_data_fifo_ARSIZE;
  wire s04_regslice_to_s04_data_fifo_ARVALID;
  wire [31:0]s04_regslice_to_s04_data_fifo_RDATA;
  wire s04_regslice_to_s04_data_fifo_RLAST;
  wire s04_regslice_to_s04_data_fifo_RREADY;
  wire [1:0]s04_regslice_to_s04_data_fifo_RRESP;
  wire s04_regslice_to_s04_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s04_data_fifo_to_s04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s04_data_fifo_to_s04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s04_data_fifo_to_s04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s04_data_fifo_to_s04_couplers_ARLEN;
  assign M_AXI_arlock[0] = s04_data_fifo_to_s04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s04_data_fifo_to_s04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s04_data_fifo_to_s04_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s04_data_fifo_to_s04_couplers_ARSIZE;
  assign M_AXI_arvalid = s04_data_fifo_to_s04_couplers_ARVALID;
  assign M_AXI_rready = s04_data_fifo_to_s04_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s04_couplers_to_s04_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s04_couplers_to_s04_regslice_RDATA;
  assign S_AXI_rlast = s04_couplers_to_s04_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s04_couplers_to_s04_regslice_RRESP;
  assign S_AXI_rvalid = s04_couplers_to_s04_regslice_RVALID;
  assign s04_couplers_to_s04_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s04_couplers_to_s04_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s04_couplers_to_s04_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s04_couplers_to_s04_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s04_couplers_to_s04_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s04_couplers_to_s04_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s04_couplers_to_s04_regslice_ARVALID = S_AXI_arvalid;
  assign s04_couplers_to_s04_regslice_RREADY = S_AXI_rready;
  assign s04_data_fifo_to_s04_couplers_ARREADY = M_AXI_arready;
  assign s04_data_fifo_to_s04_couplers_RDATA = M_AXI_rdata[31:0];
  assign s04_data_fifo_to_s04_couplers_RLAST = M_AXI_rlast;
  assign s04_data_fifo_to_s04_couplers_RRESP = M_AXI_rresp[1:0];
  assign s04_data_fifo_to_s04_couplers_RVALID = M_AXI_rvalid;
GND GND
       (.G(GND_1));
mb_subsystem_s04_data_fifo_0 s04_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s04_data_fifo_to_s04_couplers_ARADDR),
        .m_axi_arburst(s04_data_fifo_to_s04_couplers_ARBURST),
        .m_axi_arcache(s04_data_fifo_to_s04_couplers_ARCACHE),
        .m_axi_arlen(s04_data_fifo_to_s04_couplers_ARLEN),
        .m_axi_arlock(s04_data_fifo_to_s04_couplers_ARLOCK),
        .m_axi_arprot(s04_data_fifo_to_s04_couplers_ARPROT),
        .m_axi_arqos(s04_data_fifo_to_s04_couplers_ARQOS),
        .m_axi_arready(s04_data_fifo_to_s04_couplers_ARREADY),
        .m_axi_arsize(s04_data_fifo_to_s04_couplers_ARSIZE),
        .m_axi_arvalid(s04_data_fifo_to_s04_couplers_ARVALID),
        .m_axi_rdata(s04_data_fifo_to_s04_couplers_RDATA),
        .m_axi_rlast(s04_data_fifo_to_s04_couplers_RLAST),
        .m_axi_rready(s04_data_fifo_to_s04_couplers_RREADY),
        .m_axi_rresp(s04_data_fifo_to_s04_couplers_RRESP),
        .m_axi_rvalid(s04_data_fifo_to_s04_couplers_RVALID),
        .s_axi_araddr(s04_regslice_to_s04_data_fifo_ARADDR),
        .s_axi_arburst(s04_regslice_to_s04_data_fifo_ARBURST),
        .s_axi_arcache(s04_regslice_to_s04_data_fifo_ARCACHE),
        .s_axi_arlen(s04_regslice_to_s04_data_fifo_ARLEN),
        .s_axi_arlock(s04_regslice_to_s04_data_fifo_ARLOCK),
        .s_axi_arprot(s04_regslice_to_s04_data_fifo_ARPROT),
        .s_axi_arqos(s04_regslice_to_s04_data_fifo_ARQOS),
        .s_axi_arready(s04_regslice_to_s04_data_fifo_ARREADY),
        .s_axi_arregion(s04_regslice_to_s04_data_fifo_ARREGION),
        .s_axi_arsize(s04_regslice_to_s04_data_fifo_ARSIZE),
        .s_axi_arvalid(s04_regslice_to_s04_data_fifo_ARVALID),
        .s_axi_rdata(s04_regslice_to_s04_data_fifo_RDATA),
        .s_axi_rlast(s04_regslice_to_s04_data_fifo_RLAST),
        .s_axi_rready(s04_regslice_to_s04_data_fifo_RREADY),
        .s_axi_rresp(s04_regslice_to_s04_data_fifo_RRESP),
        .s_axi_rvalid(s04_regslice_to_s04_data_fifo_RVALID));
mb_subsystem_s04_regslice_0 s04_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s04_regslice_to_s04_data_fifo_ARADDR),
        .m_axi_arburst(s04_regslice_to_s04_data_fifo_ARBURST),
        .m_axi_arcache(s04_regslice_to_s04_data_fifo_ARCACHE),
        .m_axi_arlen(s04_regslice_to_s04_data_fifo_ARLEN),
        .m_axi_arlock(s04_regslice_to_s04_data_fifo_ARLOCK),
        .m_axi_arprot(s04_regslice_to_s04_data_fifo_ARPROT),
        .m_axi_arqos(s04_regslice_to_s04_data_fifo_ARQOS),
        .m_axi_arready(s04_regslice_to_s04_data_fifo_ARREADY),
        .m_axi_arregion(s04_regslice_to_s04_data_fifo_ARREGION),
        .m_axi_arsize(s04_regslice_to_s04_data_fifo_ARSIZE),
        .m_axi_arvalid(s04_regslice_to_s04_data_fifo_ARVALID),
        .m_axi_rdata(s04_regslice_to_s04_data_fifo_RDATA),
        .m_axi_rlast(s04_regslice_to_s04_data_fifo_RLAST),
        .m_axi_rready(s04_regslice_to_s04_data_fifo_RREADY),
        .m_axi_rresp(s04_regslice_to_s04_data_fifo_RRESP),
        .m_axi_rvalid(s04_regslice_to_s04_data_fifo_RVALID),
        .s_axi_araddr(s04_couplers_to_s04_regslice_ARADDR),
        .s_axi_arburst(s04_couplers_to_s04_regslice_ARBURST),
        .s_axi_arcache(s04_couplers_to_s04_regslice_ARCACHE),
        .s_axi_arlen(s04_couplers_to_s04_regslice_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(s04_couplers_to_s04_regslice_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(s04_couplers_to_s04_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s04_couplers_to_s04_regslice_ARSIZE),
        .s_axi_arvalid(s04_couplers_to_s04_regslice_ARVALID),
        .s_axi_rdata(s04_couplers_to_s04_regslice_RDATA),
        .s_axi_rlast(s04_couplers_to_s04_regslice_RLAST),
        .s_axi_rready(s04_couplers_to_s04_regslice_RREADY),
        .s_axi_rresp(s04_couplers_to_s04_regslice_RRESP),
        .s_axi_rvalid(s04_couplers_to_s04_regslice_RVALID));
endmodule
