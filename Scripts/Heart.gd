extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass 
	



func _process(delta):
	if Input.is_action_just_pressed("up"):
		position.y -= 133
	pass
