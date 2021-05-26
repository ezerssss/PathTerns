extends Button

onready var parent = get_parent()

func _pressed():
	parent.pause()
	get_tree().change_scene("res://scenes/play_menu.tscn")
