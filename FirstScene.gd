extends ColorRect

var rng = RandomNumberGenerator.new()
var number_array = []
var user_array = []

onready var button_first = get_node("Button")
onready var button_second = get_node("Button2")
onready var button_third = get_node("Button3")
onready var button_fourth = get_node("Button4")
onready var hi = get_node("hi")

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

func add_number(_number):
	if _number in user_array:
		user_array.erase(_number)
	else:
		user_array.append(_number)
	if user_array.size() == 0:
		hi.text = ""
	else:
		hi.text = str(user_array)
		
func main_menu():
	get_tree().change_scene("res://MainMenu.tscn")
