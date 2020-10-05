extends Node2D

onready var game = load("res://scenes/Game.tscn").instance()
onready var gunshot = get_node("Gunshot")

func _ready():
	pass # Replace with function body.


func _on_Button_button_down():
	gunshot.play()
	get_parent().add_child(game)
	get_parent().remove_child(self)
