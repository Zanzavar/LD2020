extends "res://objects/ClickObject.gd"

onready var dropped = false
onready var desc = "Barrel full of whiskey!"

func on_Click():
	if !dropped:
		dropped = true
		$Anime.play("Roll")
		get_parent().get_node("Anime").play("BarrelRoll")
