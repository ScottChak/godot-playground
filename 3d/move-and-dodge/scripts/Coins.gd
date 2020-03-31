extends Label

var score = 0

func _ready():
	update_text()

func update_text():
	text = String(score)

func _on_coin_collected():
	score += 1
	update_text()
