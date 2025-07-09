extends Node

var coin_count: int = 0  #Stores how many coins the player has collected
var coin_label: Label = null  # This will hold a reference to the Label node in the UI

func add_coin(amount: int):
	coin_count += amount
	update_coin_label()

func update_coin_label():
	if coin_label: # Check if the label is assigned (not null)
		coin_label.text = str(coin_count) # Set the label's text to show the current coin count
