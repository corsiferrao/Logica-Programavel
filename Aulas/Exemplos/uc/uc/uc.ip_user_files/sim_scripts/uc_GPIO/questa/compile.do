vlib work
vlib msim

vlib msim/microblaze_v9_5_2
vlib msim/xil_defaultlib
vlib msim/lmb_v10_v3_0_7
vlib msim/lmb_bram_if_cntlr_v4_0_7
vlib msim/blk_mem_gen_v8_3_0
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/mdm_v3_2_4
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_8
vlib msim/interrupt_control_v3_1_2
vlib msim/axi_gpio_v2_0_8
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_6
vlib msim/fifo_generator_v13_0_0
vlib msim/axi_data_fifo_v2_1_5
vlib msim/axi_crossbar_v2_1_7

vmap microblaze_v9_5_2 msim/microblaze_v9_5_2
vmap xil_defaultlib msim/xil_defaultlib
vmap lmb_v10_v3_0_7 msim/lmb_v10_v3_0_7
vmap lmb_bram_if_cntlr_v4_0_7 msim/lmb_bram_if_cntlr_v4_0_7
vmap blk_mem_gen_v8_3_0 msim/blk_mem_gen_v8_3_0
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap mdm_v3_2_4 msim/mdm_v3_2_4
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap interrupt_control_v3_1_2 msim/interrupt_control_v3_1_2
vmap axi_gpio_v2_0_8 msim/axi_gpio_v2_0_8
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_6 msim/axi_register_slice_v2_1_6
vmap fifo_generator_v13_0_0 msim/fifo_generator_v13_0_0
vmap axi_data_fifo_v2_1_5 msim/axi_data_fifo_v2_1_5
vmap axi_crossbar_v2_1_7 msim/axi_crossbar_v2_1_7

vcom -work microblaze_v9_5_2 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/microblaze_v9_5/hdl/microblaze_v9_5_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_microblaze_0_0/sim/uc_GPIO_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_7 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_dlmb_v10_0/sim/uc_GPIO_dlmb_v10_0.vhd" \
"./../../../bd/uc_GPIO/ip/uc_GPIO_ilmb_v10_0/sim/uc_GPIO_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_7 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_dlmb_bram_if_cntlr_0/sim/uc_GPIO_dlmb_bram_if_cntlr_0.vhd" \
"./../../../bd/uc_GPIO/ip/uc_GPIO_ilmb_bram_if_cntlr_0/sim/uc_GPIO_ilmb_bram_if_cntlr_0.vhd" \

vcom -work blk_mem_gen_v8_3_0 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_lmb_bram_0/sim/uc_GPIO_lmb_bram_0.vhd" \

vcom -work axi_lite_ipif_v3_0_3 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work mdm_v3_2_4 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_mdm_1_0/sim/uc_GPIO_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../bd/uc_GPIO/ip/uc_GPIO_clk_wiz_1_0/uc_GPIO_clk_wiz_1_0_clk_wiz.v" \
"./../../../bd/uc_GPIO/ip/uc_GPIO_clk_wiz_1_0/uc_GPIO_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_8 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_rst_clk_wiz_1_100M_0/sim/uc_GPIO_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_2 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_8 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/ip/uc_GPIO_axi_gpio_0_1/sim/uc_GPIO_axi_gpio_0_1.vhd" \
"./../../../bd/uc_GPIO/ip/uc_GPIO_axi_gpio_0_2/sim/uc_GPIO_axi_gpio_0_2.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_6 -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vcom -work fifo_generator_v13_0_0 -64 \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work axi_data_fifo_v2_1_5 -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_7 -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"./../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../uc.srcs/sources_1/bd/uc_GPIO/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"./../../../bd/uc_GPIO/ip/uc_GPIO_xbar_0/sim/uc_GPIO_xbar_0.v" \

vcom -work xil_defaultlib -64 \
"./../../../bd/uc_GPIO/hdl/uc_GPIO.vhd" \

vlog -work xil_defaultlib "glbl.v"

