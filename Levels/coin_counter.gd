extends CanvasLayer

func _ready():
	ScoreManager.coin_label = $CoinNumber
	ScoreManager.update_coin_label()
