extends TextureRect

var modes = ["matrix.tscn", "star.tscn", "web.tscn"]

onready var label = get_node("sound_container/song_label")


func _input(event):
	if event.is_action_pressed("pause"):
		get_tree().change_scene("res://scenes/main_menu.tscn")


func _process(delta):
	var current_song = music_handler.get_name()
	if current_song != "":
		label.text = current_song

func transfer_scene(_node):
	if _node == "matrix":
		get_tree().change_scene("res://scenes/patterns/matrix.tscn")
	elif _node == "star":
		get_tree().change_scene("res://scenes/patterns/star.tscn")
	elif _node == "web":
		get_tree().change_scene("res://scenes/patterns/web.tscn")
	else:
		modes.shuffle()
		get_tree().change_scene("res://scenes/patterns/"+modes[0])

