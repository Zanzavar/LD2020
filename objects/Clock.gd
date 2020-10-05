extends "Clickable.gd"


onready var desc = "Mas telionei o xronos"
func move_index(): 
	if $Index.frame == 7:
		$Index.frame = 0
	else: $Index.frame += 1
	
func on_Click(): if allowed(): turn()
