extends Spatial

var running = false

func _ready():
	pass

func start_game():
	running = true

func _on_Level_tree_entered():
	start_game()

func _on_Coin_collected():
	$HUD/Score/CoinCounter.increment()

func _on_Coin_tree_exited():
	if running:
		if $Coins.get_child_count() == 0:
			running = false
			$HUD/End.display("You win !")

func _on_Enemy_hit():
	if running:
		running = false
		
		for i in range(0, $Coins.get_child_count()):
			$Coins.get_child(i).queue_free()
		
		$HUD/End.display("Game over ...")
