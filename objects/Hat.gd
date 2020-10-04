extends Node2D

var dropped = false
var desc = "Oh my, what a nice hat!"
func on_Click():
	if !dropped:
		get_parent().get_node("Anime").play("HatDrop") 
		dropped = true
