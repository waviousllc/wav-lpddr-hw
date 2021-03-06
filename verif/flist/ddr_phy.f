${RTL}/wddr/ddr_global_pkg.sv
${RTL}/ibex/ibex_pkg.sv
${RTL}/ahb/wav_ahb_pkg.sv
${RTL}/mcu_ibex/wav_mcu_pkg.sv

+incdir+${RTL}/wddr
${RTL}/wddr/ddr_fifo.sv
${RTL}/wddr/ddr_snoop.sv
${RTL}/wddr/ddr_dp.sv
${RTL}/wddr/ddr_rx.sv
${RTL}/wddr/ddr_tx.sv
${RTL}/wddr/ddr_ahb.sv
${RTL}/wddr/ddr_dq_csr_wrapper.sv
${RTL}/wddr/ddr_dq_ahb_csr.sv
${RTL}/wddr/ddr_dq_csr.sv
${RTL}/wddr/ddr_ca_csr_wrapper.sv
${RTL}/wddr/ddr_ca_ahb_csr.sv
${RTL}/wddr/ddr_ca_csr.sv
${RTL}/wddr/ddr_dfich_ahb_csr.sv
${RTL}/wddr/ddr_dfich_csr.sv
${RTL}/wddr/ddr_dfi_ahb_csr.sv
${RTL}/wddr/ddr_dfi_csr.sv
${RTL}/wddr/ddr_dfi.sv
${RTL}/wddr/ddr_phy.sv
${RTL}/wddr/ddr_cmn.sv
${RTL}/wddr/ddr_cmn_ahb_csr.sv
${RTL}/wddr/ddr_cmn_csr.sv
${RTL}/wddr/ddr_cmn_wrapper.sv
${RTL}/wddr/ddr_fsw_ahb_csr.sv
${RTL}/wddr/ddr_fsw_csr.sv
${RTL}/wddr/ddr_pmon_dig.sv
${RTL}/wddr/ddr_pmon_freqdet.sv
${RTL}/wddr/ddr_pi_wrapper.sv
${RTL}/wddr/ddr_pi_match_wrapper.sv
${RTL}/wddr/ddr_pi_b2t_dec.sv
${RTL}/wddr/ddr_sa_2ph_pdly_no_esd_wrapper.sv
${RTL}/wddr/ddr_dq_drvr_lpbk_wrapper.sv
${RTL}/wddr/ddr_cke_drvr_lpbk_wrapper.sv
${RTL}/wddr/ddr_dqs_drvr_lpbk_wrapper.sv
${RTL}/wddr/ddr_clkmux_diff_wrapper.sv
${RTL}/wddr/ddr_clkmux_3to1_diff_wrapper.sv
${RTL}/wddr/ddr_2to1_wrapper.sv
${RTL}/wddr/ddr_prog_dly_dec.sv
${RTL}/wddr/ddr_prog_dly_se_wrapper.sv
${RTL}/wddr/ddr_prog_dly_se_small_wrapper.sv
${RTL}/wddr/ddr_dqs_rcvr_no_esd_wrapper.sv
${RTL}/wddr/ddr_ctrl_csr.sv
${RTL}/wddr/ddr_ctrl_ahb_csr.sv
${RTL}/wddr/ddr_ctrl_plane.sv
${RTL}/wddr/ddr_phy_1x32.sv
${RTL}/wddr/ddr_component_lib.sv

+incdir+${RTL}/ibex
${RTL}/ibex/ibex_alu.sv
${RTL}/ibex/ibex_compressed_decoder.sv
${RTL}/ibex/ibex_controller.sv
${RTL}/ibex/ibex_counter.sv
${RTL}/ibex/ibex_cs_registers.sv
${RTL}/ibex/ibex_decoder.sv
${RTL}/ibex/ibex_ex_block.sv
${RTL}/ibex/ibex_id_stage.sv
${RTL}/ibex/ibex_if_stage.sv
${RTL}/ibex/ibex_wb_stage.sv
${RTL}/ibex/ibex_load_store_unit.sv
${RTL}/ibex/ibex_multdiv_slow.sv
${RTL}/ibex/ibex_multdiv_fast.sv
${RTL}/ibex/ibex_prefetch_buffer.sv
${RTL}/ibex/ibex_fetch_fifo.sv
${RTL}/ibex/ibex_pmp.sv
${RTL}/ibex/ibex_register_file_ff.sv
${RTL}/ibex/ibex_core.sv
${RTL}/ibex/ibex_csr.sv
${RTL}/ibex/ibex_branch_predict.sv
${RTL}/ibex/prim_assert.sv

+incdir+${RTL}/ahb
${RTL}/ahb/wav_ahb.sv

+incdir+${RTL}/component
${RTL}/component/wav_component_lib.sv

+incdir+${RTL}/jtag
${RTL}/jtag/wav_jtag_lib.sv

+incdir+${RTL}/tech
${RTL}/tech/ddr_custom_lib.sv
${RTL}/tech/ddr_stdcell_lib.sv
${RTL}/tech/wav_stdcell_lib.sv
${RTL}/tech/wav_tcm_sp.sv
${RTL}/tech/wav_legacy_stdcell_lib.v

+incdir+${RTL}/mvp_pll
${RTL}/mvp_pll/mvp_fll.v
${RTL}/mvp_pll/mvp_pll_clk_control.v
${RTL}/mvp_pll/mvp_pll_dig.v
${RTL}/mvp_pll/mvp_pll_regs_top.v
${RTL}/mvp_pll/mvp_pll_sm.v
${RTL}/mvp_pll/mvp_sync_pulse.v

+incdir+${RTL}/pll_shared
${RTL}/pll_shared/wav_pll_shared_lib.v

+incdir+${RTL}/mcu_ibex
${RTL}/mcu_ibex/prim_clock_gating.sv
${RTL}/mcu_ibex/wav_mcu_ahb_csr.sv
${RTL}/mcu_ibex/wav_mcu_csr.sv
${RTL}/mcu_ibex/wav_mcuintf_ahb_csr.sv
${RTL}/mcu_ibex/wav_mcuintf_csr.sv
${RTL}/mcu_ibex/wav_mcutop_ahb_csr.sv
${RTL}/mcu_ibex/wav_mcutop_csr.sv
${RTL}/mcu_ibex/wav_mcu_ibex.sv
