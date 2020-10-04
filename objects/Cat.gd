extends Node2D

onready var desc = "It's a cat!"

func _ready():
	get_parent().get_node("Dialog")
	
func on_Click(): pass
