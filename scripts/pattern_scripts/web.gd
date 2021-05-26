extends Control

var rng = RandomNumberGenerator.new()

onready var label = get_node("sound_container/song_label")

var array = []
var button_array = []


func _ready():
	rng.randomize()
	var num = rng.randi_range(0,99)
	for x in range(12):
		while num in array:
			num = rng.randi_range(0,99)
		array.append(num)
		button_array.append(num)


func _process(delta):
	var current_song = music_handler.get_name()
	if current_song != "":
		label.text = current_song

func get_num():
	var num = button_array[0]
	button_array.pop_front()
	return str(num)

