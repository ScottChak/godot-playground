extends Area

signal collected

func _ready():
	pass

func _on_CoinPhysics_body_entered(body):
	var player = get_tree().get_root().get_node("Level/Steve")
	
	if player != null and body == player:
		emit_signal("collected")
		$AnimationPlayer.play("bounce")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "bounce":
		queue_free()
