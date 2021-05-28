extends Button

onready var root = get_parent()

var have_text = false

func _process(delta):
	if self.text == "" or self.text == null:
		if root.array.size() > 0:
			self.text = root.get_num()
			have_text = true

func _pressed():
	root.add_num(int(self.text))
	root.moves()
	music_handler.sfx_play()
