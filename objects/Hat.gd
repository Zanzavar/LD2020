extends Node2D

onready var dropped = false
onready var desc = "Oh my, what a nice hat!"
func on_Click():
	if !dropped:
		get_parent().get_node("Anime").play("HatDrop") 
		dropped = true
