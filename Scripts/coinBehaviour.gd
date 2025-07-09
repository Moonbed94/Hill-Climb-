extends Area2D

@export var value: int = 1 # Default value (can be set per coin in editor)

var coins = [] 

func _ready():
	coins = get_tree().get_nodes_in_group("coin") 
	connect("body_entered", Callable(self, "_on_body_entered"))
	
func _on_body_entered(body): # when coin is hit do this
	if body.is_in_group("player"): # if the player hits the coin 
		ScoreManager.add_coin(value)  # Use the custom value
		queue_free() # This removes the coin from the scene
