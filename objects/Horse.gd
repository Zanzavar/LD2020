extends "Clickable.gd"

onready var ate = false
onready var desc = "This is Menios!"
func on_Click(): 
	if !$Snort.playing and allowed():
		$Snort.play()
		turn()

func eat_apple(): get_parent().get_node("Apple").visible = false
