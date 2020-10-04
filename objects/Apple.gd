extends "Clickable.gd"

onready var dropped = false
onready var desc = "Tasty apple. Horses love it."

func on_Click():
	if !dropped and allowed():
		dropped = true
		get_parent().get_node("Anime").play("Apple")
		turn()
