extends Area2D


var a : int
var b : int

func _ready():
	randomize()
	a = randi()%3+1
	b = randi()%2+1

	if a == 1:
		position.y = 133- 75
	if a == 2:
		position.y = 266- 75
	if a == 3:
		position.y = 399- 75
	
	if b == 1:
		position.x = 0
	if b == 2:
		position.x = 600
	pass 

var time : float

func _process(delta):
	time += delta
	if b == 1:
		position.x += 400 * delta
	else:
		position.x -= 400 * delta
	modulate = hsv_to_rgb(time,1,1,1)
	pass

func hsv_to_rgb(h, s, v, a = 1):
	#based on code at
	#http://stackoverflow.com/questions/51203917/math-behind-hsv-to-rgb-conversion-of-colors
	var r
	var g
	var b

	var i = floor(h * 6)
	var f = h * 6 - i
	var p = v * (1 - s)
	var q = v * (1 - f * s)
	var t = v * (1 - (1 - f) * s)

	match (int(i) % 6):
		0:
			r = v
			g = t
			b = p
		1:
			r = q
			g = v
			b = p
		2:
			r = p
			g = v
			b = t
		3:
			r = p
			g = q
			b = v
		4:
			r = t
			g = p
			b = v
		5:
			r = v
			g = p
			b = q
	return Color(r, g, b, a)
