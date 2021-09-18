// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
// Copyright (c) 2012 by Terasic Technologies Inc.
// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development
//   Kits made by Terasic.  Other use of this code, including the selling
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use
//   or functionality of this code.
//
// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
//
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//
//
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
//
// Major Functions:	DE2_115_Default
//
// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
//
// Revision History :
// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
//   Ver  :| Author              :| Mod. Date :| Changes Made:
//   V1.1 :| HdHuang             :| 05/12/10  :| Initial Revision
//   V2.0 :| Eko       				:| 05/23/12  :| version 11.1
// ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==
module de2_115_golden_sopc(CLOCK_50,
                               CLOCK2_50,
                               CLOCK3_50,
                               ENETCLK_25,
                               SMA_CLKIN,
                               SMA_CLKOUT,
                               LEDG,
                               LEDR,
                               KEY,
                               SW,
                               HEX0,
                               HEX1,
                               HEX2,
                               HEX3,
                               HEX4,
                               HEX5,
                               HEX6,
                               HEX7,
                               LCD_BLON,
                               LCD_DATA,
                               LCD_EN,
                               LCD_ON,
                               LCD_RS,
                               LCD_RW,
                               UART_CTS,
                               UART_RTS,
                               UART_RXD,
                               UART_TXD,
                               PS2_CLK,
                               PS2_DAT,
                               PS2_CLK2,
                               PS2_DAT2,
                               SD_CLK,
                               SD_CMD,
                               SD_DAT,
                               SD_WP_N,
                               VGA_B,
                               VGA_BLANK_N,
                               VGA_CLK,
                               VGA_G,
                               VGA_HS,
                               VGA_R,
                               VGA_SYNC_N,
                               VGA_VS,
                               AUD_ADCDAT,
                               AUD_ADCLRCK,
                               AUD_BCLK,
                               AUD_DACDAT,
                               AUD_DACLRCK,
                               AUD_XCK,
                               EEP_I2C_SCLK,
                               EEP_I2C_SDAT,
                               I2C_SCLK,
                               I2C_SDAT,
                               ENET0_GTX_CLK,
                               ENET0_INT_N,
                               ENET0_MDC,
                               ENET0_MDIO,
                               ENET0_RST_N,
                               ENET0_RX_CLK,
                               ENET0_RX_COL,
                               ENET0_RX_CRS,
                               ENET0_RX_DATA,
                               ENET0_RX_DV,
                               ENET0_RX_ER,
                               ENET0_TX_CLK,
                               ENET0_TX_DATA,
                               ENET0_TX_EN,
                               ENET0_TX_ER,
                               ENET0_LINK100,
                               ENET1_GTX_CLK,
                               ENET1_INT_N,
                               ENET1_MDC,
                               ENET1_MDIO,
                               ENET1_RST_N,
                               ENET1_RX_CLK,
                               ENET1_RX_COL,
                               ENET1_RX_CRS,
                               ENET1_RX_DATA,
                               ENET1_RX_DV,
                               ENET1_RX_ER,
                               ENET1_TX_CLK,
                               ENET1_TX_DATA,
                               ENET1_TX_EN,
                               ENET1_TX_ER,
                               ENET1_LINK100,
                               TD_CLK27,
                               TD_DATA,
                               TD_HS,
                               TD_RESET_N,
                               TD_VS,
                               OTG_DATA,
                               OTG_ADDR,
                               OTG_CS_N,
                               OTG_WR_N,
                               OTG_RD_N,
                               OTG_INT,
                               OTG_RST_N,
                               IRDA_RXD,
                               DRAM_ADDR,
                               DRAM_BA,
                               DRAM_CAS_N,
                               DRAM_CKE,
                               DRAM_CLK,
                               DRAM_CS_N,
                               DRAM_DQ,
                               DRAM_DQM,
                               DRAM_RAS_N,
                               DRAM_WE_N,
                               SRAM_ADDR,
                               SRAM_CE_N,
                               SRAM_DQ,
                               SRAM_LB_N,
                               SRAM_OE_N,
                               SRAM_UB_N,
                               SRAM_WE_N,
                               FL_ADDR,
                               FL_CE_N,
                               FL_DQ,
                               FL_OE_N,
                               FL_RST_N,
                               FL_RY,
                               FL_WE_N,
                               FL_WP_N,
                               GPIO,
                               HSMC_CLKIN_P1,
                               HSMC_CLKIN_P2,
                               HSMC_CLKIN0,
                               HSMC_CLKOUT_P1,
                               HSMC_CLKOUT_P2,
                               HSMC_CLKOUT0,
                               HSMC_D,
                               HSMC_RX_D_P,
                               HSMC_TX_D_P,
                               EX_IO);

    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =
    //  PARAMETER declarations
    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =


    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =
    //  PORT declarations
    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =

    //////////// CLOCK //////////
    input		          		CLOCK_50;
    input		          		CLOCK2_50;
    input		          		CLOCK3_50;
    input		          		ENETCLK_25;

    //////////// Sma //////////
    input	SMA_CLKIN;
    output	SMA_CLKOUT;

    //////////// LED //////////
    output		  [8:0]		LEDG;
    output		  [17:0]		LEDR;

    //////////// KEY //////////
    input		     [3:0]		KEY;

    //////////// SW //////////
    input		     [17:0]		SW;

    //////////// SEG7 //////////
    output		  [6:0]		HEX0;
    output		  [6:0]		HEX1;
    output		  [6:0]		HEX2;
    output		  [6:0]		HEX3;
    output		  [6:0]		HEX4;
    output		  [6:0]		HEX5;
    output		  [6:0]		HEX6;
    output		  [6:0]		HEX7;

    //////////// LCD //////////
    output		          	LCD_BLON;
    inout		     [7:0]		LCD_DATA;
    output		          	LCD_EN;
    output		          	LCD_ON;
    output		          	LCD_RS;
    output		          	LCD_RW;

    //////////// RS232 //////////
    output		          	UART_CTS;
    input		          		UART_RTS;
    input		          		UART_RXD;
    output		          	UART_TXD;

    //////////// PS2 //////////
    inout		          		PS2_CLK;
    inout		          		PS2_DAT;
    inout		          		PS2_CLK2;
    inout		          		PS2_DAT2;

    //////////// SDCARD //////////
    output		          	SD_CLK;
    inout		          		SD_CMD;
    inout		     [3:0]		SD_DAT;
    input		          		SD_WP_N;

    //////////// VGA //////////
    output		  [7:0]		VGA_B;
    output		          	VGA_BLANK_N;
    output		          	VGA_CLK;
    output		  [7:0]		VGA_G;
    output		          	VGA_HS;
    output		  [7:0]		VGA_R;
    output		          	VGA_SYNC_N;
    output		          	VGA_VS;

    //////////// Audio //////////
    input   AUD_ADCDAT;
    inout   AUD_ADCLRCK;
    inout   AUD_BCLK;
    output  AUD_DACDAT;
    inout   AUD_DACLRCK;
    output  AUD_XCK;

    //////////// I2C for EEPROM //////////
    output		          	EEP_I2C_SCLK;
    inout		          		EEP_I2C_SDAT;

    //////////// I2C for Audio and Tv-Decode //////////
    output		          	I2C_SCLK;
    inout		          		I2C_SDAT;

    //////////// Ethernet 0 //////////
    output		          	ENET0_GTX_CLK;
    input		          		ENET0_INT_N;
    output		          	ENET0_MDC;
    inout		          		ENET0_MDIO;
    output		          	ENET0_RST_N;
    input		          		ENET0_RX_CLK;
    input		          		ENET0_RX_COL;
    input		          		ENET0_RX_CRS;
    input		     [3:0]		ENET0_RX_DATA;
    input		          		ENET0_RX_DV;
    input		          		ENET0_RX_ER;
    input		          		ENET0_TX_CLK;
    output		  [3:0]		ENET0_TX_DATA;
    output		          	ENET0_TX_EN;
    output		          	ENET0_TX_ER;
    input		          		ENET0_LINK100;

    //////////// Ethernet 1 //////////
    output		          	ENET1_GTX_CLK;
    input		          		ENET1_INT_N;
    output		          	ENET1_MDC;
    inout		          		ENET1_MDIO;
    output		          	ENET1_RST_N;
    input		          		ENET1_RX_CLK;
    input		          		ENET1_RX_COL;
    input		          		ENET1_RX_CRS;
    input		     [3:0]		ENET1_RX_DATA;
    input		          		ENET1_RX_DV;
    input		          		ENET1_RX_ER;
    input		          		ENET1_TX_CLK;
    output		  [3:0]		ENET1_TX_DATA;
    output		          	ENET1_TX_EN;
    output		          	ENET1_TX_ER;
    input		          		ENET1_LINK100;

    //////////// TV Decoder 1 //////////
    input		          		TD_CLK27;
    input		     [7:0]		TD_DATA;
    input		          		TD_HS;
    output  TD_RESET_N;
    input   TD_VS;


    //////////// USB OTG controller //////////
    inout         [15:0]    OTG_DATA;
    output        [1:0]     OTG_ADDR;
    output                  OTG_CS_N;
    output                  OTG_WR_N;
    output                  OTG_RD_N;
    input                   OTG_INT;
    output                  OTG_RST_N;

    //////////// IR Receiver //////////
    input		          		IRDA_RXD;

    //////////// SDRAM //////////
    output		  [12:0]		DRAM_ADDR;
    output		  [1:0]		DRAM_BA;
    output		          	DRAM_CAS_N;
    output		          	DRAM_CKE;
    output		          	DRAM_CLK;
    output		          	DRAM_CS_N;
    inout		     [31:0]		DRAM_DQ;
    output		  [3:0]		DRAM_DQM;
    output		          	DRAM_RAS_N;
    output		          	DRAM_WE_N;

    //////////// SRAM //////////
    output		 [19:0]		SRAM_ADDR;
    output		          	SRAM_CE_N;
    inout		    [15:0]		SRAM_DQ;
    output		          	SRAM_LB_N;
    output		          	SRAM_OE_N;
    output		          	SRAM_UB_N;
    output		          	SRAM_WE_N;

    //////////// Flash //////////
    output		 [22:0]		FL_ADDR;
    output		          	FL_CE_N;
    inout		    [7:0]		FL_DQ;
    output		          	FL_OE_N;
    output		          	FL_RST_N;
    input		          		FL_RY;
    output		          	FL_WE_N;
    output		          	FL_WP_N;

    //////////// GPIO //////////
    inout		    [35:0]		GPIO;

    //////////// HSMC (LVDS) //////////
    input HSMC_CLKIN_P1;
    input HSMC_CLKIN_P2;
    input HSMC_CLKIN0;
    output HSMC_CLKOUT_P1;
    output HSMC_CLKOUT_P2;
    output HSMC_CLKOUT0;
    inout [3:0] HSMC_D;
    input [16:0] HSMC_RX_D_P;
    output [16:0] HSMC_TX_D_P;

    //////// EXTEND IO //////////
    inout		    [6:0]		EX_IO;



    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =
    //  REG/WIRE declarations
    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =

    //////// 7-SEG //////////////
    wire HEX0P;
    wire HEX1P;
    wire HEX2P;
    wire HEX3P;
    wire HEX4P;
    wire HEX5P;
    wire HEX6P;
    wire HEX7P;

    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =
    //  Structural coding
    // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  =

    wire reset_n;
    assign reset_n = 1'b1;

    DE2_115_QSYS DE2_115_qsys_inst(
                     // 1) global signals:
                     .clk_50_clk_in_clk(CLOCK_50),
                     .reset_reset_n(reset_n),
                     .altpll_c3_clk(VGA_CLK),
                     .altpll_c1_clk(DRAM_CLK),

                     // the_sdram
                     .sdram_wire_addr(DRAM_ADDR),
                     .sdram_wire_ba(DRAM_BA),
                     .sdram_wire_cas_n(DRAM_CAS_N),
                     .sdram_wire_cke(DRAM_CKE),
                     .sdram_wire_cs_n(DRAM_CS_N),
                     .sdram_wire_dq(DRAM_DQ),
                     .sdram_wire_dqm(DRAM_DQM),
                     .sdram_wire_ras_n(DRAM_RAS_N),
                     .sdram_wire_we_n(DRAM_WE_N),

                     // the_sram
                     .sram_conduit_end_ADDR(SRAM_ADDR),
                     .sram_conduit_end_CE_n(SRAM_CE_N),
                     .sram_conduit_end_DQ(SRAM_DQ),
                     .sram_conduit_end_LB_n(SRAM_LB_N),
                     .sram_conduit_end_OE_n(SRAM_OE_N),
                     .sram_conduit_end_UB_n(SRAM_UB_N),
                     .sram_conduit_end_WE_n(SRAM_WE_N),

                     // the_tri_state_bridge_flash_avalon_slave
                     .flash_bridge_address_to_the_cfi_flash(FL_ADDR),
                     .flash_bridge_read_n_to_the_cfi_flash(FL_OE_N),
                     .flash_bridge_select_n_to_the_cfi_flash(FL_CE_N),
                     .flash_bridge_tri_state_bridge_flash_data(FL_DQ),
                     .flash_bridge_write_n_to_the_cfi_flash(FL_WE_N)
                 );

    //LED
    assign LEDR[17:16] = 2'b00;
    assign LEDR[15:0]  = 16'h0000;
    assign LEDG[8]     = 1'b0;
    assign LEDG[7:0]   = 8'h0;

    //HEX
    assign HEX0 = 7'b1111111;
    assign HEX1 = 7'b1111111;
    assign HEX2 = 7'b1111111;
    assign HEX3 = 7'b1111111;
    assign HEX4 = 7'b1111111;
    assign HEX5 = 7'b1111111;
    assign HEX6 = 7'b1111111;
    assign HEX7 = 7'b1111111;

    ///////////////////////////////////////////
    // LCD config
    assign	LCD_BLON      = 0; // not supported
    assign	LCD_ON        = 1'b1; // alwasy on
    assign	LCD_DATA[7:0] = 8'bz;
    assign	LCD_EN        = 1'b0;
    assign	LCD_RS        = 1'b0;
    assign	LCD_RW        = 1'b0;

    // Flash Config
    assign	FL_RST_N = reset_n;
    assign	FL_WP_N  = 1'b1;

    ///////////////////////////////////////////
    // GPIO
    wire   io_dir;
    wire   action;
    assign io_dir      = KEY[0] & action;
    assign GPIO[17:0]  = (io_dir)?GPIO[35:18]:18'hz;
    assign GPIO[35:18] = (io_dir)?GPIO[17:0]:18'hz;

    // Sma
    assign	SMA_CLKOUT = 1'b0;

    ///////////////////////////////////////////
    // HSMC
    assign HSMC_D[1:0]    = (io_dir)?HSMC_D[3:2]:2'hz;
    assign HSMC_D[3:2]    = (io_dir)?HSMC_D[1:0]:2'hz;
    assign HSMC_TX_D_P    = HSMC_RX_D_P;
    assign HSMC_CLKOUT_P1 = HSMC_CLKIN_P1;
    assign HSMC_CLKOUT_P2 = HSMC_CLKIN_P2;
    assign HSMC_CLKOUT0   = HSMC_CLKIN0;

    ///////////////////////////////////////////
    // VGA
    assign VGA_BLANK_N = 1'b1;
    assign VGA_SYNC_N  = 1'b1;
    assign VGA_R       = 8'h0;
    assign VGA_G       = 8'h0;
    assign VGA_B       = 8'h0;
    assign VGA_HS      = 1'b0;
    assign VGA_VS      = 1'b0;

    ///////////////////////////////////////////
    // NET
    //Ethernet 0
    assign ENET0_GTX_CLK = ENET0_INT_N;
    assign ENET0_MDC     = ENET0_RX_COL;
    assign ENET0_RST_N   = ENET0_RX_CRS;
    assign ENET0_TX_DATA = ENET0_RX_DATA;
    assign ENET0_TX_EN   = ENET0_RX_ER;
    assign ENET0_TX_ER   = ENET0_TX_CLK;
    assign ENET0_MDIO    = 1'bz;

    //Ethernet 1
    assign ENET1_GTX_CLK = ENET1_INT_N;
    assign ENET1_MDC     = ENET1_RX_COL;
    assign ENET1_RST_N   = ENET1_RX_CRS;
    assign ENET1_TX_DATA = ENET1_RX_DATA;
    assign ENET1_TX_EN   = ENET1_RX_ER;
    assign ENET1_TX_ER   = ENET1_TX_CLK;
    assign ENET1_MDIO    = 1'bz;

    ///////////////////////////////////////////
    // TV
    assign TD_RESET_N = TD_VS;
    assign action     = FL_RY & TD_HS & TD_CLK27 & (TD_DATA == 8'hff);

    ///////////////////////////////////////////
    // ps2
    assign PS2_CLK  = 1'bz;
    assign PS2_CLK2 = 1'bz;
    assign PS2_DAT  = 1'bz;
    assign PS2_DAT2 = 1'bz;

    ///////////////////////////////////////////
    // USB OTG controller
    assign   OTG_DATA  = 16'hzzzz;
    assign   OTG_ADDR  = 16'h0000;
    assign   OTG_CS_N  = 1'b1;
    assign   OTG_WR_N  = 1'b1;
    assign   OTG_RD_N  = 1'b1;
    assign   OTG_RST_N = 1'b1;
    ///////////////////////////////////////////
    // RS232
    assign  UART_CTS = 1'b1;
    assign  UART_TXD = 1'b1;

    ///////////////////////////////////////////
    // SDCARD
    assign  SD_CLK = 1'b0;
    assign  SD_CMD = 1'bz;
    assign  SD_DAT = 4'hz;

    ///////////////////////////////////////////
    // Audio
    assign  AUD_ADCLRCK = 1'bz;
    assign  AUD_BCLK    = 1'bz;
    assign  AUD_DACLRCK = 1'bz;
    assign  AUD_DACDAT  = 1'b0;
    assign  AUD_XCK     = 1'b0;
    ///////////////////////////////////////////
    // I2C for Audio and Tv-Decode
    assign I2C_SCLK = 1'b0;
    assign I2C_SDAT = 1'bz;
    ///////////////////////////////////////////
    // I2C for EEPROM
    assign  EEP_I2C_SCLK = 1'b0;
    assign  EEP_I2C_SDAT = 1'bz;

    ///////////////////////////////////////////
    // EXTEND IO
    assign EX_IO = 7'bz;
endmodule
