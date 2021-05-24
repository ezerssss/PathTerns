extends TextureRect


func transfer_scene(_node):
	if _node == "matrix":
		get_tree().change_scene("res://scenes/patterns/matrix.tscn")
	elif _node == "star":
		get_tree().change_scene("res://scenes/patterns/star.tscn")
	elif _node == "web":
		get_tree().change_scene("res://scenes/patterns/web.tscn")
	else:
		print("RANDOM")
