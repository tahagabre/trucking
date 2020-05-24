extends Spatial

var target

var timer_raw = 0
var timer

func _ready():
	findtarget()

func _process(delta):
	timer_raw += delta
	timer = round(timer_raw)
	
	if timer >  1:
		findtarget()
		timer_raw = 0 

func findtarget():
	target = get_node("/root/Main/Navigation/target")
	get_tree().call_group("units", "move_to", target.translation)


