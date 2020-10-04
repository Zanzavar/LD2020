extends Node2D

onready var dropped = false
onready var desc = "Hey, at least the sun will not be a problem!"
func on_Click():
	if !dropped:
		get_parent().get_node("Anime").play("HatDrop") 
		dropped = true
