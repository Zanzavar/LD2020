extends "res://objects/Clickable.gd"

onready var took_it = false
onready var desc = "This crow eyes me suspiciously."

func on_Click(): 
	if !$Crow.playing and allowed():
		$Crow.play()
		turn()
		unturn()
