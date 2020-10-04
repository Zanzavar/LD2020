extends Node2D

var desc = "This is Menios!"
func on_Click(): 
	if !$Snort.playing:
		$Snort.play()
