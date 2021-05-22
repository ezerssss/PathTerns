extends MarginContainer

onready var select_one = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/selector_one
onready var select_two = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/selector_two
onready var select_three = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer4/HBoxContainer/selector_two
onready var select_four = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/selector_three

var current_selection = 0

func _ready():
	set_current_selection(0)
	
func _process(delta):
	if Input.is_action_just_pressed("ui_down"):
		current_selection += 1
		if current_selection > 3:
			current_selection = 0
		set_current_selection(current_selection)
	if Input.is_action_just_pressed("ui_up"):
		current_selection -= 1
		if current_selection < 0:
			current_selection = 3
		set_current_selection(current_selection)
	if Input.is_action_just_pressed("ui_accept"):
		handle_selection(current_selection)


func handle_selection(_current_selection):
	if _current_selection == 0:
		get_tree().change_scene("res://star_pattern.tscn")
	elif _current_selection == 1:
		print("HELLO WORLD")
	elif _current_selection == 2:
		get_tree().change_scene("res://leader_boards.tscn")
	else:
		get_tree().quit()


func set_current_selection(_current_selection):
	select_one.text = ""
	select_two.text = ""
	select_three.text = ""
	select_four.text = ""
	if _current_selection == 0:
		select_one.text = ">"
	elif _current_selection == 1:
		select_two.text = ">"
	elif _current_selection == 2:
		select_three.text = ">"
	else:
		select_four.text = ">"
	
