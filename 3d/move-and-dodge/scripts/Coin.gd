extends Area

signal collected

export(float) var rotation_speed = 0.5

func _ready():
	pass

func _physics_process(delta):
	rotate_y(PI * delta * rotation_speed)

func _on_coin_body_entered(body):
	var player = get_tree().get_root().get_node("Level/Steve")
	
	if player != null and "player_name" in body and body.player_name == player.player_name:
		emit_signal("collected")
		$AnimationPlayer.play("bounce")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "bounce":
		queue_free()
