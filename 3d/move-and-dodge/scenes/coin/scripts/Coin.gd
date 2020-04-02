extends Spatial

signal collected

export(float) var rotation_speed = 0.5

func _ready():
	pass

func _physics_process(delta):
	rotate_y(PI * delta * rotation_speed)

func _on_CoinPhysics_collected():
	emit_signal("collected")

func _on_CoinPhysics_tree_exited():
	queue_free()
