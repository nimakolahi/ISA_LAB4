#!/bin/sh
source  /software/scripts/init_questa10.7c
vlib work
vcom -93 -work ./work ../src/dadda/dadda_lib.vhd
vcom -93 -work ./work ../src/dadda/dadda.vhd
vlog -sv ../tb/top.sv
vsim top
