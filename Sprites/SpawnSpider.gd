extends Node2D


const spiderload = preload("res://Scenes/Spider.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	
	pass

func SpawnSpider():
	var spider = spiderload.instance()
	get_tree().root.get_node("GameScene").add_child(spider)
	pass

func _on_Timer_timeout():
	SpawnSpider()
	pass 
	
