onerror {quit -f}
vlib work
vlog -work work TN4.vo
vlog -work work TN4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TN4_vlg_vec_tst
vcd file -direction TN4.msim.vcd
vcd add -internal TN4_vlg_vec_tst/*
vcd add -internal TN4_vlg_vec_tst/i1/*
add wave /*
run -all
