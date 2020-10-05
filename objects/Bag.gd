extends "Clickable.gd"

onready var desc = "That’s a fashionable bag."

func on_Click():
	if !$Leather.playing and allowed():
		$Leather.play()
		get_parent().get_node("Anime").play("Mirror")
