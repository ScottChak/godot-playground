extends Area

func _ready():
	pass

func _on_Enemy_body_entered(body):
	var player = get_tree().get_root().get_node("Level/Steve")
	
	if player != null and "player_name" in body and body.player_name == player.player_name:
		print("enemy_hit")
