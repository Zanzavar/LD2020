extends Node2D

var desc = "Oh my, what a nice hat!"

func on_Click(): get_parent().get_node("Anime").play("HatDrop") 
