extends ProgressBar

const player = preload("res://Scenes/Heart.tscn")



func _ready():
	max_value = get_tree().root.get_node("GameScene").get_node("Heart").maxhealth
	pass 

func _process(delta):
	value = get_tree().root.get_node("GameScene").get_node("Heart").currenthealth
	pass

