transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/alunos/Desktop/1208A/LAB5/Lab5.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208A/LAB5/Compl2.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208A/LAB5/Decod.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208A/LAB5/Mult.vhd}

