extends Spatial

func _ready():
	pass

func _on_Coin_collected():
	$HUD/Score/CoinCounter.increment()

func _on_Coin_freed():
	#	Delete all CoinPosition where no Coin
	#	If Coins is empty, win
	pass # Replace with function body.
