extends Control

var first_bg = load("res://resource/audio/Inukshuk - A World Away [NCS Release].mp3")
var first_name = "Inukshuk - A World Away [NCS Release]"

var second_bg = load("res://resource/audio/Inukshuk - Happy Accidents [NCS Release]-320k.mp3")
var second_name = "Inukshuk - Happy Accidents [NCS Release]"

var third_bg = load("res://resource/audio/Inukshuk - Too Far Gone [NCS Release].mp3")
var third_name = "Inukshuk - Too Far Gone [NCS Release]"

var fourth_bg = load("res://resource/audio/Killercats - Tell Me (feat. Alex Skrindo) [NCS Release]-320k.mp3")
var fourth_name = "Killercats - Tell Me (feat. Alex Skrindo) [NCS Release]"

var sfx_sound = load("res://resource/audio/button_sfx.mp3")

var random_number = 0
var past_number = 0
var rng = RandomNumberGenerator.new()

var current_playing = ""

var playing = true

func _process(delta):
	if $bg_music.playing == false:
		rng.randomize()
		while (random_number == past_number):
			random_number = rng.randi_range(1,4)
		past_number = random_number
		if random_number == 1:
			$bg_music.stream = first_bg
			current_playing = first_name
		elif random_number == 2:
			$bg_music.stream = second_bg
			current_playing = second_name
		elif random_number == 3:
			$bg_music.stream = third_bg
			current_playing = third_name
		else:
			$bg_music.stream = fourth_bg
			current_playing = fourth_name
		$bg_music.play()

func get_name():
	return current_playing
	
func pause_song():
	if playing:
		$bg_music.stream_paused = true
		playing = false
	else:
		$bg_music.stream_paused = false
		playing = true

func sfx_play():
	$sfx.stream = sfx_sound
	$sfx.play()
