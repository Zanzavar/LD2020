extends "Clickable.gd"

onready var desc = "What is this grandfather clock doing here?"
onready var cuckoo = get_node("Cuckoo")
onready var clock = get_node("Clock")

func _ready():
	$Index.frame = 1

func move_index():
	if get_parent().turn != 3 and get_parent().turn != 6 and get_parent().turn != 9:
		if $Index.frame == 7:
			$Index.frame = 0
			cuckoo.play()
			get_parent().end_of_time()
		else: 
			$Index.frame += 1
			clock.play()
			

func on_Click():
	if allowed():
		turn()
		unturn()
