extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var toLerp : float

# Called when the node enters the scene tree for the first time.
func _ready():
	toLerp = position.y
	pass 
	

func _process(delta):
	if Input.is_action_just_pressed("up") && position.y > 133:
		toLerp = position.y - 133
	
	if Input.is_action_just_pressed("down") && position.y < 133 * 2:
		toLerp = position.y + 133
	position.y = lerp(position.y,toLerp,0.01)
	
	if Input.is_action_pressed("left"):
		position.x -= 270*delta
	
	if Input.is_action_pressed("right"):
		position.x += 270*delta
	pass
