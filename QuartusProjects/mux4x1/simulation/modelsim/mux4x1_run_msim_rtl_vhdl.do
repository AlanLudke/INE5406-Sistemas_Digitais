transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/allu/cco/INE5406-Sistemas_Digitais/QuartusProjects/mux4x1/mux4x1.vhd}

