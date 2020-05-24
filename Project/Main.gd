extends Spatial


onready var zombie = preload("res://Unit.tscn")
var spawner
var timer_raw = 0
var timer

func _process(delta):
	timer_raw += delta
	timer = round(timer_raw)
	
	if timer >  4:
		spawn_zombie()
		timer_raw = 0 
		
func spawn_zombie():
	var z = zombie.instance()
	spawner = get_node("/root/Main/Navigation/Spawner")
	var spawnerpos = spawner.translation 
	z.translation = spawnerpos
	add_child(z)
