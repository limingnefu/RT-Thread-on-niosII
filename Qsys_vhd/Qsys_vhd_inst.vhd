	component Qsys_vhd is
		port (
			clk_clk_clk                : in    std_logic                     := 'X';             -- clk
			flash_tcm_address_out      : out   std_logic_vector(22 downto 0);                    -- tcm_address_out
			flash_tcm_read_n_out       : out   std_logic_vector(0 downto 0);                     -- tcm_read_n_out
			flash_tcm_write_n_out      : out   std_logic_vector(0 downto 0);                     -- tcm_write_n_out
			flash_tcm_data_out         : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- tcm_data_out
			flash_tcm_chipselect_n_out : out   std_logic_vector(0 downto 0);                     -- tcm_chipselect_n_out
			led_export                 : out   std_logic_vector(17 downto 0);                    -- export
			pll_arst_export            : in    std_logic                     := 'X';             -- export
			pll_lock_export            : out   std_logic;                                        -- export
			pll_pdone_export           : out   std_logic;                                        -- export
			rst_rst_reset_n            : in    std_logic                     := 'X';             -- reset_n
			sdram_addr                 : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                   : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n                : out   std_logic;                                        -- cas_n
			sdram_cke                  : out   std_logic;                                        -- cke
			sdram_cs_n                 : out   std_logic;                                        -- cs_n
			sdram_dq                   : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_dqm                  : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_ras_n                : out   std_logic;                                        -- ras_n
			sdram_we_n                 : out   std_logic;                                        -- we_n
			sdram_clk_clk              : out   std_logic;                                        -- clk
			sram_DQ                    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
			sram_ADDR                  : out   std_logic_vector(19 downto 0);                    -- ADDR
			sram_UB_n                  : out   std_logic;                                        -- UB_n
			sram_LB_n                  : out   std_logic;                                        -- LB_n
			sram_WE_n                  : out   std_logic;                                        -- WE_n
			sram_CE_n                  : out   std_logic;                                        -- CE_n
			sram_OE_n                  : out   std_logic;                                        -- OE_n
			uart_rxd                   : in    std_logic                     := 'X';             -- rxd
			uart_txd                   : out   std_logic;                                        -- txd
			uart_cts_n                 : in    std_logic                     := 'X';             -- cts_n
			uart_rts_n                 : out   std_logic;                                        -- rts_n
			epcs_dclk                  : out   std_logic;                                        -- dclk
			epcs_sce                   : out   std_logic;                                        -- sce
			epcs_sdo                   : out   std_logic;                                        -- sdo
			epcs_data0                 : in    std_logic                     := 'X'              -- data0
		);
	end component Qsys_vhd;

	u0 : component Qsys_vhd
		port map (
			clk_clk_clk                => CONNECTED_TO_clk_clk_clk,                --   clk_clk.clk
			flash_tcm_address_out      => CONNECTED_TO_flash_tcm_address_out,      --     flash.tcm_address_out
			flash_tcm_read_n_out       => CONNECTED_TO_flash_tcm_read_n_out,       --          .tcm_read_n_out
			flash_tcm_write_n_out      => CONNECTED_TO_flash_tcm_write_n_out,      --          .tcm_write_n_out
			flash_tcm_data_out         => CONNECTED_TO_flash_tcm_data_out,         --          .tcm_data_out
			flash_tcm_chipselect_n_out => CONNECTED_TO_flash_tcm_chipselect_n_out, --          .tcm_chipselect_n_out
			led_export                 => CONNECTED_TO_led_export,                 --       led.export
			pll_arst_export            => CONNECTED_TO_pll_arst_export,            --  pll_arst.export
			pll_lock_export            => CONNECTED_TO_pll_lock_export,            --  pll_lock.export
			pll_pdone_export           => CONNECTED_TO_pll_pdone_export,           -- pll_pdone.export
			rst_rst_reset_n            => CONNECTED_TO_rst_rst_reset_n,            --   rst_rst.reset_n
			sdram_addr                 => CONNECTED_TO_sdram_addr,                 --     sdram.addr
			sdram_ba                   => CONNECTED_TO_sdram_ba,                   --          .ba
			sdram_cas_n                => CONNECTED_TO_sdram_cas_n,                --          .cas_n
			sdram_cke                  => CONNECTED_TO_sdram_cke,                  --          .cke
			sdram_cs_n                 => CONNECTED_TO_sdram_cs_n,                 --          .cs_n
			sdram_dq                   => CONNECTED_TO_sdram_dq,                   --          .dq
			sdram_dqm                  => CONNECTED_TO_sdram_dqm,                  --          .dqm
			sdram_ras_n                => CONNECTED_TO_sdram_ras_n,                --          .ras_n
			sdram_we_n                 => CONNECTED_TO_sdram_we_n,                 --          .we_n
			sdram_clk_clk              => CONNECTED_TO_sdram_clk_clk,              -- sdram_clk.clk
			sram_DQ                    => CONNECTED_TO_sram_DQ,                    --      sram.DQ
			sram_ADDR                  => CONNECTED_TO_sram_ADDR,                  --          .ADDR
			sram_UB_n                  => CONNECTED_TO_sram_UB_n,                  --          .UB_n
			sram_LB_n                  => CONNECTED_TO_sram_LB_n,                  --          .LB_n
			sram_WE_n                  => CONNECTED_TO_sram_WE_n,                  --          .WE_n
			sram_CE_n                  => CONNECTED_TO_sram_CE_n,                  --          .CE_n
			sram_OE_n                  => CONNECTED_TO_sram_OE_n,                  --          .OE_n
			uart_rxd                   => CONNECTED_TO_uart_rxd,                   --      uart.rxd
			uart_txd                   => CONNECTED_TO_uart_txd,                   --          .txd
			uart_cts_n                 => CONNECTED_TO_uart_cts_n,                 --          .cts_n
			uart_rts_n                 => CONNECTED_TO_uart_rts_n,                 --          .rts_n
			epcs_dclk                  => CONNECTED_TO_epcs_dclk,                  --      epcs.dclk
			epcs_sce                   => CONNECTED_TO_epcs_sce,                   --          .sce
			epcs_sdo                   => CONNECTED_TO_epcs_sdo,                   --          .sdo
			epcs_data0                 => CONNECTED_TO_epcs_data0                  --          .data0
		);

