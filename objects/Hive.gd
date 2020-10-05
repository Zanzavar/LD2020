extends "Clickable.gd"

onready var dropped = false
onready var desc = "These bees seem friendly."

func on_Click():
	if !$Buzz.playing and !dropped and allowed():
		dropped = true
		$Buzz.play()
		get_parent().get_node("Anime").play("Hive")
		turn()
