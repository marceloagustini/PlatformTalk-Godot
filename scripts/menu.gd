extends Node2D
func _ready():
	pass

func _on_PLAY_pressed():
	get_tree().change_scene("scenes/levels/level1.tscn")


func _on_EXIT_pressed():
	get_tree().quit()
