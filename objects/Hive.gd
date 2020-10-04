extends "res://objects/ClickObject.gd"

onready var dropped = false
onready var desc = "Figh Hive?"

func on_Click():
	if !dropped and allowed():
		dropped = true
		get_parent().get_node("Anime").play("Hive")
