extends Button

onready var root = get_parent().get_parent().get_parent()

onready var parent = get_parent()

func _pressed():
	root.reset_time()
	parent.pause()
	
