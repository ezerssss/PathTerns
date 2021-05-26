extends Button


onready var parent = get_parent()

func _pressed():
	parent.pause()
