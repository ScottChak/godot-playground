extends KinematicBody

export(int) var base_speed = 8
export(float) var acceleration_rate = 0.2
export(float) var deceleration_rate = 0.05

var player_name = "STEEEVE"
var velocity = Vector3(0, 0, 0)

func _ready():
	print("Hello " + player_name + " !")

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		pass
	elif Input.is_action_pressed("ui_right"):
		velocity.x = lerp(velocity.x, base_speed, acceleration_rate)
	elif Input.is_action_pressed("ui_left"):
		velocity.x = lerp(velocity.x, -base_speed, acceleration_rate)
	else:
		velocity.x = lerp(velocity.x, 0, deceleration_rate)
		
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		pass
	elif Input.is_action_pressed("ui_up"):
		velocity.z = lerp(velocity.z, -base_speed, acceleration_rate)
	elif Input.is_action_pressed("ui_down"):
		velocity.z = lerp(velocity.z, base_speed, acceleration_rate)
	else:
		velocity.z = lerp(velocity.z, 0, deceleration_rate)
	
	move_and_slide(velocity)
