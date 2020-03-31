extends ColorRect

func _ready():
	pass

func _on_coin_freed():
	pass # Replace with function body.

func _on_enemy_hit():
	$Label.text = "Game over"
	visible = true
