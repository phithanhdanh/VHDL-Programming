onerror {quit -f}
vlib work
vlog -work work TN5_Behavioral.vo
vlog -work work TN5_Behavioral.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TN5_Behavioral_vlg_vec_tst
vcd file -direction TN5_Behavioral.msim.vcd
vcd add -internal TN5_Behavioral_vlg_vec_tst/*
vcd add -internal TN5_Behavioral_vlg_vec_tst/i1/*
add wave /*
run -all
