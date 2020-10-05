extends "res://objects/Clickable.gd"

onready var dissolved = false
onready var desc = "Yes. It’s a bunch of leaves."

func on_Click():
	if !dissolved and allowed():
		$Anime.play("Dissolve")
		dissolved = true
		turn()
		unturn()
