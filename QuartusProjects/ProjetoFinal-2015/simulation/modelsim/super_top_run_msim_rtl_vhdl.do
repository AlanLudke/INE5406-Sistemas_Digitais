transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/sequencer_top.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/seq0_fsm.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/seq1_fsm.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/seq2_fsm.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/super_top.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/decod7.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/clock_div_FSM.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/ROM.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/adder_register_top.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/signed_adder.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/D_11FF.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/fsm_control_top.vhd}
vcom -93 -work work {C:/Users/Frata/Desktop/atesomador_testadoefuncionando/FSMctrl.vhd}

