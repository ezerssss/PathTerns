extends Button

onready var root = get_parent()

var have_text = false

func _process(delta):
	if have_text == false:
		if root.array.size() > 0:
			self.text = root.get_num()
			have_text = true
