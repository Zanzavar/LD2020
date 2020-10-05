extends Node2D

onready var game = load("res://scenes/Game.tscn").instance()
onready var gunshot = get_node("Gunshot")

func _ready():
	pass # Replace with function body.

func _on_Button_button_down():
	gunshot.play()
	var main = get_parent().get_parent()
	main.remove_child(main.get_node("Game"))
	main.add_child(game)
