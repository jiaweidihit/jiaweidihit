onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /DFF/d
add wave -noupdate /DFF/q
add wave -noupdate /DFF/qn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {250 ns} {1250 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern repeater -initialvalue HiZ -period 200ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns sim:/DFF/d 
WaveCollapseAll -1
wave clipboard restore
