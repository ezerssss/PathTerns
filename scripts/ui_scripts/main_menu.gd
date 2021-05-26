extends TextureRect

onready var label = get_node("sound_container/song_label")

func _process(delta):
	var current_song = music_handler.get_name()
	if current_song != "":
		label.text = current_song
