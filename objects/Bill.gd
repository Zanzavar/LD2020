extends "Clickable.gd"

onready var desc = "Welp, luck was never my strong suit."
onready var emotes = ["Idle", "Wink", "LookUp", "LookDown", "LookLeft", "LookRight"]
onready var dead = false

func on_Click():
	if (!$Bill1.playing or !$Bill2.playing or !dead) and allowed():
		var chance = randi()%100+1
		if (chance < 50):
			$Bill1.play()
		else:
			$Bill2.play()
		turn()


func _on_Timer_timeout():
	if !dead:
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
			
func tombstone():
	var instance = load("res://scenes/Death.tscn").instance()
	get_parent().add_child(instance)
	
