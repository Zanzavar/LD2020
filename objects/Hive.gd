extends "Clickable.gd"

onready var dropped = false
onready var desc = "These bees seem friendly."

func on_Click():
	if !dropped and allowed():
		dropped = true
		get_parent().get_node("Anime").play("Hive")
