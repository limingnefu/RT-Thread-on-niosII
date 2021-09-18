
module Qsys_vhd (
	clk_clk_clk,
	flash_tcm_address_out,
	flash_tcm_read_n_out,
	flash_tcm_write_n_out,
	flash_tcm_data_out,
	flash_tcm_chipselect_n_out,
	led_export,
	pll_arst_export,
	pll_lock_export,
	pll_pdone_export,
	rst_rst_reset_n,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	sdram_clk_clk,
	sram_DQ,
	sram_ADDR,
	sram_UB_n,
	sram_LB_n,
	sram_WE_n,
	sram_CE_n,
	sram_OE_n,
	uart_rxd,
	uart_txd,
	uart_cts_n,
	uart_rts_n,
	epcs_dclk,
	epcs_sce,
	epcs_sdo,
	epcs_data0);	

	input		clk_clk_clk;
	output	[22:0]	flash_tcm_address_out;
	output	[0:0]	flash_tcm_read_n_out;
	output	[0:0]	flash_tcm_write_n_out;
	inout	[7:0]	flash_tcm_data_out;
	output	[0:0]	flash_tcm_chipselect_n_out;
	output	[17:0]	led_export;
	input		pll_arst_export;
	output		pll_lock_export;
	output		pll_pdone_export;
	input		rst_rst_reset_n;
	output	[12:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[31:0]	sdram_dq;
	output	[3:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output		sdram_clk_clk;
	inout	[15:0]	sram_DQ;
	output	[19:0]	sram_ADDR;
	output		sram_UB_n;
	output		sram_LB_n;
	output		sram_WE_n;
	output		sram_CE_n;
	output		sram_OE_n;
	input		uart_rxd;
	output		uart_txd;
	input		uart_cts_n;
	output		uart_rts_n;
	output		epcs_dclk;
	output		epcs_sce;
	output		epcs_sdo;
	input		epcs_data0;
endmodule
