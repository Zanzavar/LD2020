extends "ClickObject.gd"

onready var desc = "Welp, luck was never my strong suit."
onready var emotes = ["Idle", "Wink", "LookUp", "LookDown", "LookLeft", "LookRight"]

func _on_Timer_timeout():
	var chance = randi()%100+1
	if (chance < 30):
		$Anime.play(emotes[1])
	elif (chance < 40):
		$Anime.play(emotes[2])
	elif (chance < 45):
		$Anime.play(emotes[3])
	elif (chance < 50):
		$Anime.play(emotes[4])
	else:
		$Anime.play(emotes[0])
