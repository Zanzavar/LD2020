extends "Clickable.gd"

onready var ate = false
onready var desc = "Easy there, boy!"
func on_Click(): 
	if !$Snort.playing and allowed():
		$Snort.play()
		turn()
