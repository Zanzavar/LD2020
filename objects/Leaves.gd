extends "res://objects/ClickObject.gd"

onready var desc = "Yes. It’s a bunch of leaves."
func on_Click(): $Anime.play("Dissolve")
