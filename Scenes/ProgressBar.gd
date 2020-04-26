extends ProgressBar

const player = preload("res://Scenes/Heart.tscn")



func _ready():
	var maxplayerhealth = player.instance().maxhealth
	max_value = maxplayerhealth
	pass 



func _process(delta):
	print(value)
	pass


func _on_ProgressBar_value_changed(value):
	var curplayerhealth = player.instance()
	value = curplayerhealth.currenthealth
	pass 
