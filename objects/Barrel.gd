extends "Clickable.gd"

onready var dropped = false
onready var shot = false
onready var desc = "I could use one last sip of whiskey."

func on_Click():
	if !dropped:
		dropped = true
		$Anime.play("Roll")
		get_parent().get_node("Anime").play("BarrelRoll")
		turn()
