-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:xfft:9.1
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xfft_v9_1_5;
USE xfft_v9_1_5.xfft_v9_1_5;

ENTITY xfft_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tuser : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    m_axis_status_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_status_tvalid : OUT STD_LOGIC;
    m_axis_status_tready : IN STD_LOGIC;
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
  );
END xfft_0;

ARCHITECTURE xfft_0_arch OF xfft_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF xfft_0_arch: ARCHITECTURE IS "yes";
  COMPONENT xfft_v9_1_5 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING;
      C_PART : STRING;
      C_S_AXIS_CONFIG_TDATA_WIDTH : INTEGER;
      C_S_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TUSER_WIDTH : INTEGER;
      C_M_AXIS_STATUS_TDATA_WIDTH : INTEGER;
      C_THROTTLE_SCHEME : INTEGER;
      C_CHANNELS : INTEGER;
      C_NFFT_MAX : INTEGER;
      C_ARCH : INTEGER;
      C_HAS_NFFT : INTEGER;
      C_USE_FLT_PT : INTEGER;
      C_INPUT_WIDTH : INTEGER;
      C_TWIDDLE_WIDTH : INTEGER;
      C_OUTPUT_WIDTH : INTEGER;
      C_HAS_SCALING : INTEGER;
      C_HAS_BFP : INTEGER;
      C_HAS_ROUNDING : INTEGER;
      C_HAS_ACLKEN : INTEGER;
      C_HAS_ARESETN : INTEGER;
      C_HAS_OVFLO : INTEGER;
      C_HAS_NATURAL_INPUT : INTEGER;
      C_HAS_NATURAL_OUTPUT : INTEGER;
      C_HAS_CYCLIC_PREFIX : INTEGER;
      C_HAS_XK_INDEX : INTEGER;
      C_DATA_MEM_TYPE : INTEGER;
      C_TWIDDLE_MEM_TYPE : INTEGER;
      C_BRAM_STAGES : INTEGER;
      C_REORDER_MEM_TYPE : INTEGER;
      C_USE_HYBRID_RAM : INTEGER;
      C_OPTIMIZE_GOAL : INTEGER;
      C_CMPY_TYPE : INTEGER;
      C_BFLY_TYPE : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_config_tvalid : IN STD_LOGIC;
      s_axis_config_tready : OUT STD_LOGIC;
      s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_data_tvalid : IN STD_LOGIC;
      s_axis_data_tready : OUT STD_LOGIC;
      s_axis_data_tlast : IN STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_data_tuser : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tready : IN STD_LOGIC;
      m_axis_data_tlast : OUT STD_LOGIC;
      m_axis_status_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_status_tvalid : OUT STD_LOGIC;
      m_axis_status_tready : IN STD_LOGIC;
      event_frame_started : OUT STD_LOGIC;
      event_tlast_unexpected : OUT STD_LOGIC;
      event_tlast_missing : OUT STD_LOGIC;
      event_fft_overflow : OUT STD_LOGIC;
      event_status_channel_halt : OUT STD_LOGIC;
      event_data_in_channel_halt : OUT STD_LOGIC;
      event_data_out_channel_halt : OUT STD_LOGIC
    );
  END COMPONENT xfft_v9_1_5;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_data_out_channel_halt: SIGNAL IS "XIL_INTERFACENAME event_data_out_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_data_out_channel_halt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_data_out_channel_halt_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_data_in_channel_halt: SIGNAL IS "XIL_INTERFACENAME event_data_in_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_data_in_channel_halt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_data_in_channel_halt_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_status_channel_halt: SIGNAL IS "XIL_INTERFACENAME event_status_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_status_channel_halt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_status_channel_halt_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_tlast_missing: SIGNAL IS "XIL_INTERFACENAME event_tlast_missing_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_tlast_missing: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_tlast_missing_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_tlast_unexpected: SIGNAL IS "XIL_INTERFACENAME event_tlast_unexpected_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_tlast_unexpected: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_tlast_unexpected_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_frame_started: SIGNAL IS "XIL_INTERFACENAME event_frame_started_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_frame_started: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_frame_started_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_status_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_status_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_status_tdata: SIGNAL IS "XIL_INTERFACENAME M_AXIS_STATUS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_status_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TUSER";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_data_tdata: SIGNAL IS "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 24, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_data_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_config_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_config_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_config_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_config_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:M_AXIS_STATUS:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_intf CLK";
BEGIN
  U0 : xfft_v9_1_5
    GENERIC MAP (
      C_XDEVICEFAMILY => "zynq",
      C_PART => "xc7z020clg400-2",
      C_S_AXIS_CONFIG_TDATA_WIDTH => 8,
      C_S_AXIS_DATA_TDATA_WIDTH => 16,
      C_M_AXIS_DATA_TDATA_WIDTH => 16,
      C_M_AXIS_DATA_TUSER_WIDTH => 24,
      C_M_AXIS_STATUS_TDATA_WIDTH => 8,
      C_THROTTLE_SCHEME => 1,
      C_CHANNELS => 1,
      C_NFFT_MAX => 16,
      C_ARCH => 1,
      C_HAS_NFFT => 0,
      C_USE_FLT_PT => 0,
      C_INPUT_WIDTH => 8,
      C_TWIDDLE_WIDTH => 16,
      C_OUTPUT_WIDTH => 8,
      C_HAS_SCALING => 1,
      C_HAS_BFP => 1,
      C_HAS_ROUNDING => 0,
      C_HAS_ACLKEN => 0,
      C_HAS_ARESETN => 1,
      C_HAS_OVFLO => 0,
      C_HAS_NATURAL_INPUT => 1,
      C_HAS_NATURAL_OUTPUT => 0,
      C_HAS_CYCLIC_PREFIX => 0,
      C_HAS_XK_INDEX => 1,
      C_DATA_MEM_TYPE => 1,
      C_TWIDDLE_MEM_TYPE => 1,
      C_BRAM_STAGES => 0,
      C_REORDER_MEM_TYPE => 1,
      C_USE_HYBRID_RAM => 0,
      C_OPTIMIZE_GOAL => 0,
      C_CMPY_TYPE => 1,
      C_BFLY_TYPE => 0
    )
    PORT MAP (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      s_axis_config_tdata => s_axis_config_tdata,
      s_axis_config_tvalid => s_axis_config_tvalid,
      s_axis_config_tready => s_axis_config_tready,
      s_axis_data_tdata => s_axis_data_tdata,
      s_axis_data_tvalid => s_axis_data_tvalid,
      s_axis_data_tready => s_axis_data_tready,
      s_axis_data_tlast => s_axis_data_tlast,
      m_axis_data_tdata => m_axis_data_tdata,
      m_axis_data_tuser => m_axis_data_tuser,
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tlast => m_axis_data_tlast,
      m_axis_status_tdata => m_axis_status_tdata,
      m_axis_status_tvalid => m_axis_status_tvalid,
      m_axis_status_tready => m_axis_status_tready,
      event_frame_started => event_frame_started,
      event_tlast_unexpected => event_tlast_unexpected,
      event_tlast_missing => event_tlast_missing,
      event_status_channel_halt => event_status_channel_halt,
      event_data_in_channel_halt => event_data_in_channel_halt,
      event_data_out_channel_halt => event_data_out_channel_halt
    );
END xfft_0_arch;
