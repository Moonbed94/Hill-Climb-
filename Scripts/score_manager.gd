extends Node

var coin_count: int = 0  #Stores how many coins the player has collected
var coin_label: Label = null  # This will hold a reference to the Label node in the UI

func add_coin():
	coin_count += 1 # Increases the coin count by 1
	update_coin_label() # Call the function to update the text on the UI

func update_coin_label():
	if coin_label: # Check if the label is assigned (not null)
		coin_label.text = str(coin_count) # Set the label's text to show the current coin count
