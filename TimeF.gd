extends Node

const HOUR = 60
const DAY = 24

func createTime(hour:int, minute:int):
	var collection = {"hour":hour, "minute":minute}
	return collection

func addTimes(var x, var y):
	var mins = x.minute + y.minute
	var hours = x.hour + y.hour
	var add_hours = minOverflowHours(mins)
	var remaining = mins-(add_hours*HOUR)
	var finalHour = equalizeHours(hours+add_hours)
	var result = {"hour" : finalHour, "minute" : remaining}
	return result

func timeToHours(var time) -> float:
	var hours = float(time.hour*HOUR + time.minute)/HOUR
	return hours

func multiTime(var time, multi:float):
	var minutes : int = (time.hour*HOUR) + time.minute
	minutes = round(float(minutes) *multi)
	var newHours = minOverflowHours(minutes)
	var newMins = minutes-(newHours*HOUR)
	
	#var hours : int = hoursToMin(time.hour)
	#var total = hours * multi
	#var newHours = minOverflowHours(total)
	#var newMins = total-(time.hour*HOUR)
	var newTime = createTime(newHours, newMins)
	return newTime

func equalizeHours(hours : int) -> int:
	var days : int = round(float(hours)/DAY)
	var result = hours-(days*DAY)
	return result

func minOverflowHours(mins:int) -> int:
	var result = float(mins/HOUR)
	return int(round(result))

func hoursToMin(hours:float) -> int:
	var mins = hours*HOUR
	return mins
