extends Area

signal hit

func _ready():
	pass

func _on_Enemy_body_entered(body):
	var player = get_tree().get_root().get_node("Level/Steve")
	
	if player != null and body == player:
		emit_signal("hit")
