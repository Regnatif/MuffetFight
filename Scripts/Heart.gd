extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var toLerp : float
var blink = 0
var alphadown = true
var kat : int = 2
var maxhealth = 20
var currenthealth = 20

func _ready():
	toLerp = position.y
	pass 

func _process(delta):
	
	if Input.is_action_just_pressed("up") && kat < 3:
		kat += 1
		toLerp = (3 - kat) * 133 + 70
	
	if Input.is_action_just_pressed("down") && kat > 1:
		kat -= 1
		toLerp = (3 - kat) * 133 + 70

	position.y = lerp(position.y,toLerp,0.01)
	
	if Input.is_action_pressed("left"):
		position.x -= 270 * delta
	
	if Input.is_action_pressed("right"):
		position.x += 270 * delta
	pass
	
	if position.x <= 0 + 30:
		position.x = 0 + 30
	
	if position.x >= 600 - 30:
		position.x = 600- 30
	
func _on_Heart_area_entered(area : Area2D):
	if area.is_in_group("Spider"):
		currenthealth -= 6
		blink = 10
		modulate.a = 0
		$Timer.start()
		area.queue_free()
	pass 


func _on_Timer_timeout():
	if blink > 0:
		if modulate.a == 1:
			modulate.a = 0
		elif modulate.a == 0:
			modulate.a = 1
		blink -= 1
	else:
		modulate.a = 1
