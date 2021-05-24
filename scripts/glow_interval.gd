extends Label

var glow = true
var sec = 0

func _process(delta):
	sec += delta
	if glow:
		if sec > .7:
			glow = false
			sec = 0
	else:
		if sec > 1.2:
			glow = true
			sec = 0
	if glow:
		self.add_color_override("font_color", Color(1.05,1.05,1.05))
	else:
		self.add_color_override("font_color", Color(.5,.5,.5))
