extends Button

var number = "NA"

onready var root = get_parent()

func _ready():
	self.text = number

func _pressed():
	number = get_text()
	print(number)
	root.add_number(number)
