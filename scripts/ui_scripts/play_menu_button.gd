extends Button

onready var subtext = get_node("Label")
onready var root = get_tree().get_root().get_node("bg_play_menu")
var color = [1.1, 1.1, 1.1]
var color_hovered = [1.2, 1.1, 1.2]

func _process(delta):
	if self.is_hovered():
		hovered()
	else:
		not_hovered()

func _ready():
	not_hovered()

func not_hovered():
	subtext.add_color_override("font_color", Color(color[0],color[1],color[2]))
	
func hovered():
	subtext.add_color_override("font_color", Color(color_hovered[0],color_hovered[1],color_hovered[2]))

func _pressed():
	root.transfer_scene(self.get_name())
