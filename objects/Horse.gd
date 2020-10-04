extends Node2D

onready var ate = false
onready var desc = "This is Menios!"
func on_Click(): 
	if !$Snort.playing:
		$Snort.play()
		get_parent().advance()
