extends Node2D

onready var game = load("res://scenes/Game.tscn").instance()
onready var gunshot = get_node("Gunshot")

func _ready():
	var chance = randi()%100+1
	if (chance < 30):
		$Inscription.text = "He was always stuck in a loop."
	elif (chance < 50):
		$Inscription.text = "Never paid attention to clocks"
	elif (chance < 70):
		$Inscription.text = "Would always forget to feed his horse"
	else:
		$Inscription.text = "Did not know that crows are afraid of bees"

func _on_Button_button_down():
	gunshot.play()
	var main = get_parent().get_parent()
	main.remove_child(main.get_node("Game"))
	main.add_child(game)
