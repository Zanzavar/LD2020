extends "Clickable.gd"

onready var dropped = false
onready var desc = "That’s a fashionable bag."

func on_Click():
	if !dropped and allowed():
		dropped = true
		$Leather.play()
		get_parent().get_node("Anime").play("Mirror")
		turn()
