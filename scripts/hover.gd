extends Button

onready var subtext = get_node("Label")
var color = [1.3, 1.5, 1.3]
var color_hovered = [1.4, 1.7, 1.4]


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
