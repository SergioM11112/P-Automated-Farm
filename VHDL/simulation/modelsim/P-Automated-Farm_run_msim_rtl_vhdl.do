transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aleja/OneDrive/Escritorio/Proyecto final/P-Automated-Farm/VHDL/main.vhd}
vcom -93 -work work {C:/Users/aleja/OneDrive/Escritorio/Proyecto final/P-Automated-Farm/VHDL/contador.vhd}
vcom -93 -work work {C:/Users/aleja/OneDrive/Escritorio/Proyecto final/P-Automated-Farm/VHDL/ffJK.vhd}
vcom -93 -work work {C:/Users/aleja/OneDrive/Escritorio/Proyecto final/P-Automated-Farm/VHDL/div_frec.vhd}
vcom -93 -work work {C:/Users/aleja/OneDrive/Escritorio/Proyecto final/P-Automated-Farm/VHDL/ffD.vhd}
vcom -93 -work work {C:/Users/aleja/OneDrive/Escritorio/Proyecto final/P-Automated-Farm/VHDL/FSM_C.vhd}

