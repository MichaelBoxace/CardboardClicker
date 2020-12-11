extends Control

var main_node 

func _ready():
	main_node = get_tree().get_root().get_node("Main")

func _on_CheckButton_toggled(on):
	var audio = get_node("MainTheme")
	var audio2 = get_node("AudioStreamPlayer")
	if on and main_node.count < 10:
		audio.play()
	if on and main_node.count > 10:
		audio.queue_free()
		audio2.play()
	else:
		audio2.stop()
		audio.stop()
