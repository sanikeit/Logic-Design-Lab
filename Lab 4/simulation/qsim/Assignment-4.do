onerror {exit -code 1}
vlib work
vlog -work work Assignment-4.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.comparator_4_bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction Assignment-4.msim.vcd
vcd add -internal comparator_4_bit_vlg_vec_tst/*
vcd add -internal comparator_4_bit_vlg_vec_tst/i1/*
run -all
quit -f
