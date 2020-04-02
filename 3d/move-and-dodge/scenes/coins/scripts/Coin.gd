extends Area

signal collected
signal freed

export(float) var rotation_speed = 0.5

func _ready():
	pass

func _physics_process(delta):
	rotate_y(PI * delta * rotation_speed)

func _on_Coin_body_entered(body):
	var player = get_tree().get_root().get_node("Level/Steve")
	if player != null and body == player:
		emit_signal("collected")
		$AnimationPlayer.play("bounce")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "bounce":
		queue_free()
		emit_signal("freed")
