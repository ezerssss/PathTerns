extends Button

var mode_selected = 0

func _ready():
	self.text = data_handler.get_mode()


func _pressed():
	if self.text == "DFS":
		self.text = "BFS"
	else:
		self.text = "DFS"
	data_handler.set_mode(self.text)
