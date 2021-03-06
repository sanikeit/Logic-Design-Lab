onerror {exit -code 1}
vlib work
vlog -work work Assignment6.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Assignment6_vlg_vec_tst -voptargs="+acc"
vcd file -direction Assignment6.msim.vcd
vcd add -internal Assignment6_vlg_vec_tst/*
vcd add -internal Assignment6_vlg_vec_tst/i1/*
run -all
quit -f
