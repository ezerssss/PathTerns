extends Control

var rng = RandomNumberGenerator.new()
onready var timer_label = get_node("timer")
onready var label = get_node("sound_container/song_label")
var time = 0
var timer_on = false
var array = []
var button_array = []
var graph = {}
var user_array = []
func create_graph(array):
	for i in array:
		graph[i] = []
var order = []


func _ready():
	timer_on = true
	rng.randomize()
	var num = rng.randi_range(0,99)
	for x in range(12):
		while num in array:
			num = rng.randi_range(0,99)
		array.append(num)
		button_array.append(num)
	create_graph(array)
	traversal.create_graph(graph)
	print(array)
	traversal.add_edge(array[0], array[1])
	traversal.add_edge(array[0], array[3])
	traversal.add_edge(array[0], array[2])
	traversal.add_edge(array[1], array[4])
	traversal.add_edge(array[1], array[5])
	traversal.add_edge(array[3], array[4])
	traversal.add_edge(array[4], array[5])
	traversal.add_edge(array[2], array[3])
	traversal.add_edge(array[2], array[6])
	traversal.add_edge(array[6], array[7])
	traversal.add_edge(array[6], array[10])
	traversal.add_edge(array[7], array[10])
	traversal.add_edge(array[10], array[11])
	traversal.add_edge(array[7], array[3])
	traversal.add_edge(array[7], array[8])
	traversal.add_edge(array[4], array[8])
	traversal.add_edge(array[8], array[9])
	traversal.add_edge(array[11], array[9])
	traversal.add_edge(array[5], array[9])
	traversal.add_edge(array[8], array[11])
	order = traversal.dfs(array[0])
	print(order)
	
	

func _process(delta):
	var current_song = music_handler.get_name()
	if current_song != "":
		label.text = current_song
	
	if(timer_on):
		time += delta
	var mils = fmod(time, 1) * 1000
	var secs = fmod(time, 60)
	var mins = fmod(time, 60 * 60) /60
	var time_passed = "%02d : %02d : %03d" % [mins, secs, mils]
	timer_label.text = time_passed
	
func get_num():
	var num = button_array[0]
	button_array.pop_front()
	return str(num)

func add_num(num):
	if num in user_array:
		user_array.erase(num)
	else:
		user_array.append(num)
	print(user_array)
	if len(user_array) == 12:
		if user_array == order:
			print('yey!')
			timer_on = false
		else:
			print('wrong!')
			_process(5)
			#punishment lods

