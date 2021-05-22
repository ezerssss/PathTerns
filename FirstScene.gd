extends ColorRect

var rng = RandomNumberGenerator.new()
var number_array = []
var user_array = []

onready var button_first = get_node("Button")
onready var button_second = get_node("Button2")
onready var button_third = get_node("Button3")
onready var button_fourth = get_node("Button4")

func _ready():
	rng.randomize()
	button_first.text = set_number()
	button_second.text = set_number()
	button_third.text = set_number()
	button_fourth.text = set_number()

func set_number():
	var number
	number = rng.randi_range(0, 100)
	while number in number_array:
		number = rng.randi_range(0, 100)
	number_array.append(number)
	return str(number)

func call_from_child():
	print(user_array)
