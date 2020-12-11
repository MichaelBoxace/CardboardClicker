extends Control

var main_node 

func _ready():
	main_node = get_tree().get_root().get_node("Main")

func _on_CheckButton_toggled(on):
	var animation_background = get_node("Background/Dungeon")
	if on:
		animation_background.play()
	else:
		animation_background.stop()

	var animation_cardboard = get_node("Cardboard/Michael")
	if on:
		animation_cardboard.play()
	else:
		animation_cardboard.stop()

	var animation_golden = get_node("Area2D/Golden")
	if on:
		animation_golden.play()
	else:
		animation_golden.stop()
