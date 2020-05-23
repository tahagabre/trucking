extends Spatial

var target

func _physics_process(delta):
	if ! target:
		target = get_node("/root/Spatial/Navigation/target")
	
		print("!!!!")
		get_tree().call_group("units", "move_to", target.translation)


