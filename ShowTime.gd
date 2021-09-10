extends Label

onready var timerF = get_node("/root/TimeF")


func _ready():
	var now = OS.get_time()
	var sleepCycle = timerF.createTime(1,30)
	var cycle1 = timerF.addTimes(now, sleepCycle)
	var cycle2 = timerF.addTimes(cycle1, sleepCycle)
	var cycle3 = timerF.addTimes(cycle2, sleepCycle)
	var cycle4 = timerF.addTimes(cycle3, sleepCycle)
	var cycle5 = timerF.addTimes(cycle4, sleepCycle)
	var cycle6 = timerF.addTimes(cycle5, sleepCycle)
	
	var duration1 = timerF.timeToHours(sleepCycle)
	var duration2 = timerF.timeToHours(timerF.multiTime(sleepCycle,2))
	var duration3 = timerF.timeToHours(timerF.multiTime(sleepCycle,3))
	var duration4 = timerF.timeToHours(timerF.multiTime(sleepCycle,4))
	var duration5 = timerF.timeToHours(timerF.multiTime(sleepCycle,5))
	var duration6 = timerF.timeToHours(timerF.multiTime(sleepCycle,6))
	
	text = "Cycle 1 - "+str(cycle1.hour) +":"+ ("%02d"%cycle1.minute) +" "+("%.1f"%duration1)+" hours of sleep"+"\n"
	text += "Cycle 2 - "+str(cycle2.hour) +":"+ ("%02d"%cycle2.minute) +" "+("%.1f"%duration2)+" hours of sleep"+"\n"
	text += "Cycle 3 - "+str(cycle3.hour) +":"+ ("%02d"%cycle3.minute) +" "+("%.1f"%duration3)+" hours of sleep"+"\n"
	text += "Cycle 4 - "+str(cycle4.hour) +":"+ ("%02d"%cycle4.minute) +" "+("%.1f"%duration4)+" hours of sleep"+"\n"
	text += "Cycle 5 - "+str(cycle5.hour) +":"+ ("%02d"%cycle5.minute) +" "+("%.1f"%duration5)+" hours of sleep"+"\n"
	text += "Cycle 6 - "+str(cycle6.hour) +":"+ ("%02d"%cycle6.minute) +" "+("%.1f"%duration6)+" hours of sleep"

#TODO: Incomplete
func addSleepCycle(cycles:int):
	var now = OS.get_time()
	var sleepCycle = timerF.createTime(1,30)
	var cycle1 = timerF.addTimes(now, sleepCycle)
	var duration1 = timerF.timeToHours(sleepCycle)
	text = "Cycle 1 - "+str(cycle1.hour) +":"+ ("%02d"%cycle1.minute) +" "+("%.1f"%duration1)+" hours of sleep"+"\n"
