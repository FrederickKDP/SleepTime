extends Control

onready var timerF = get_node("/root/TimeF")
const ONE_CYCLE_IN_MINS : float = 90.0
var time_elapsed : float = 90.0

#TODO: Make get node outside instead of calling each time
func set_cycle(txt:String):
	$Cycle/Label.text = txt

func set_time(txt:String):
	$Time/Label.text = txt

func set_slept(txt:String):
	$Slept/Label.text = txt

func set_time_elapsed(cycles:int):
	time_elapsed = cycles*ONE_CYCLE_IN_MINS

func update_times():
	#$Cycle/Label.text =  txt
	#$Time/Label.text = txt
	#$Slept/Label.text = txt
	pass
