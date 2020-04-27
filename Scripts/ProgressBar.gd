extends ProgressBar

const player = preload("res://Scenes/Heart.tscn")



func _ready():
	var maxplayerhealth = player.instance().maxhealth
	max_value = maxplayerhealth
	pass 

func _process(delta):
	var curplayerhealth = player.instance().currenthealth
	print(curplayerhealth)
	pass

