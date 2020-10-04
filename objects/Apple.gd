extends "res://objects/ClickObject.gd"

onready var dropped = false
onready var desc = "Really? Apples in the middle of the desert?"

func on_Click():
	if !dropped:
		dropped = true
		get_parent().get_node("Anime").play("Apple")
		get_parent().advance()
