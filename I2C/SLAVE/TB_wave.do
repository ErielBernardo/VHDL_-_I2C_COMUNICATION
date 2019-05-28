onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {SLAVE TOP}
add wave -noupdate -expand -group SLAVE -label {SLAVE ADDRESS} /tb_slave/U00/ADD
add wave -noupdate -expand -group SLAVE -expand -group {CLOCK & RESET} -label CLK /tb_slave/U00/i_CLK
add wave -noupdate -expand -group SLAVE -expand -group {CLOCK & RESET} -label RST /tb_slave/U00/i_RST
add wave -noupdate -expand -group SLAVE -expand -group {I2C INPUT} -label i_SCL /tb_slave/U00/i_SCL
add wave -noupdate -expand -group SLAVE -expand -group {I2C INPUT} -label i_SDA /tb_slave/U00/i_SDA
add wave -noupdate -expand -group SLAVE -expand -group OUTPUT -label o_DATA /tb_slave/U00/o_DATA
add wave -noupdate -expand -group SLAVE -expand -group OUTPUT -label o_ENABLE /tb_slave/U00/o_ENABLE
add wave -noupdate -expand -group SLAVE -expand -group {INTERNAL SIGNALS} -label w_DATA /tb_slave/U00/w_DATA
add wave -noupdate -expand -group SLAVE -expand -group {INTERNAL SIGNALS} -label w_ENABLE /tb_slave/U00/w_ENABLE
add wave -noupdate -divider {FRAME DETECTOR}
add wave -noupdate -expand -group DET_FRAME -label w0_DESCIDA /tb_slave/U00/U_DET_FRAME/w0_DESCIDA
add wave -noupdate -expand -group DET_FRAME -label w1_SUBIDA /tb_slave/U00/U_DET_FRAME/w1_SUBIDA
add wave -noupdate -expand -group DET_FRAME -label o_ENABLE /tb_slave/U00/U_DET_FRAME/o_ENABLE
add wave -noupdate -divider S2P
add wave -noupdate -expand -group S2P -expand -group DESLOCAMENTO -label cont /tb_slave/U00/U_S2P/cont
add wave -noupdate -expand -group S2P -expand -group DESLOCAMENTO -label w_DATA /tb_slave/U00/U_S2P/w_DATA
add wave -noupdate -expand -group S2P -expand -group OUTPUT -label o_DATA /tb_slave/U00/U_S2P/o_DATA
add wave -noupdate -divider {STATE MACHINE}
add wave -noupdate -expand -group STM_SLAVE -label STATE /tb_slave/U00/U_STM_SLAVE/state
add wave -noupdate -expand -group STM_SLAVE -label w_ENABLE /tb_slave/U00/U_STM_SLAVE/w_ENABLE
add wave -noupdate -expand -group STM_SLAVE -expand -group OUTPUT -label o_DATA /tb_slave/U00/U_STM_SLAVE/o_DATA
add wave -noupdate -expand -group STM_SLAVE -expand -group OUTPUT -label o_ENABLE /tb_slave/U00/U_STM_SLAVE/o_ENABLE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {78445040214 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 295
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {411742627346 ps}
