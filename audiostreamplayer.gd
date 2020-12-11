extends AudioStreamPlayer

var main_node 

func _ready():
	main_node = get_tree().get_root().get_node("Main")
	
func _process(delta):
	if main_node.count <= 10:
		.play()

