extends ColorRect

func _ready():
	pass

func display(text):
	$Label.text = text
	visible = true
