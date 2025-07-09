extends Control

@onready var play_button = $MarginContainer/VBoxContainer/PlayButton
@onready var options_button = $MarginContainer/VBoxContainer/OptionsButton
@onready var quit_button = $MarginContainer/VBoxContainer/QuitButton

func _ready():
	play_button.pressed.connect(on_play_pressed)
	options_button.pressed.connect(on_options_pressed)
	quit_button.pressed.connect(on_quit_pressed)

func on_play_pressed():
	get_tree().change_scene_to_file("res://Levels/level_0.tscn")

func on_options_pressed():
	print("Options button pressed")  # You can open a popup or another scene here

func on_quit_pressed():
	get_tree().quit()
