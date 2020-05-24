extends Spatial



func _physics_process(delta):
	global_translate(Vector3(0,0,delta))
