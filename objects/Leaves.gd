extends "res://objects/Clickable.gd"

onready var dissolved = false
onready var desc = "Yes. It’s a bunch of leaves."

func on_Click():
	if !dissolved and allowed():
		$Anime.play("Dissolve")
		dissolved = true
		var beam1 = get_parent().get_node("Beam1")
		beam1.visible = true
		turn()
