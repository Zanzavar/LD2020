extends "Clickable.gd"

onready var ate = false
onready var desc = "Easy there, boy!"
func on_Click(): 
	if !$Snort.playing and allowed():
		$Snort.play()
		turn()
		unturn()

func eat_apple(): 
	if (get_parent().get_node("Apple").dropped):
		get_parent().get_node("Apple").visible = false
	else: get_parent().get_node("BadApple").visible = false
	unturn()
