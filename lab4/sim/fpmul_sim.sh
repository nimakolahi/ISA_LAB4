#!/bin/sh
source  /software/scripts/init_questa10.7c
vlib work
#vcom -93 -work ./work ../src/fpmul/fpnormalize_fpnormalize.vhd
#vcom -93 -work ./work ../src/fpmul/fpround_fpround.vhd
#vcom -93 -work ./work ../src/fpmul/packfp_packfp.vhd
#vcom -93 -work ./work ../src/fpmul/unpackfp_unpackfp.vhd

#vcom -93 -work ./work ../src/fpmul/reg.vhd

#vcom -93 -work ./work ../src/fpmul/fpmul_stage1_struct.vhd
#vcom -93 -work ./work ../src/fpmul/fpmul_stage2_struct.vhd
#vcom -93 -work ./work ../src/fpmul/fpmul_stage3_struct.vhd
#vcom -93 -work ./work ../src/fpmul/fpmul_stage4_struct.vhd
#vcom -93 -work ./work ../src/fpmul/fpmul_pipeline.vhd

vcom -93 -work ./work ../src/fpmul/fpmul_single_cycle.vhd
vlog -sv ../tb/top.sv
vsim top
