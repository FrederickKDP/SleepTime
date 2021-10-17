extends Control

#TODO: Make get node outside instead of calling each time
func set_cycle(txt:String):
	$Cycle/Label.text = txt

func set_time(txt:String):
	$Time/Label.text = txt

func set_slept(txt:String):
	$Slept/Label.text = txt
