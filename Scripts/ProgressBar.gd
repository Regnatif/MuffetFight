extends ProgressBar

const player = preload("res://Scenes/Heart.tscn")



func _ready():
	max_value = Vars.maxhealth
	pass 

func _process(delta):
	value = Vars.currenthealth
	pass

