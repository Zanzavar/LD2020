extends "res://objects/Clickable.gd"

onready var desc = "At least I won't get hungry."
onready var dropped = false
func on_Click(): 
	if !dropped and allowed():
		get_parent().apple_drops()
		dropped = true
		turn()
