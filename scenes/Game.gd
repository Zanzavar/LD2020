extends Node2D

func dialog(text):
	var diag = preload("res://utils/dialog/SimpleDialogueBox.tscn").instance()
	diag.get_node("RichTextLabel").dialogue_text = text
	diag.position = Vector2(get_viewport().size.x/4, get_viewport().size.y/2 + 19)
	diag.get_node("RichTextLabel").text_advance()
	add_child(diag)
	return diag

onready var turn = 0
onready var advancing = false

# MANOLI
# Αν το διαβάζεις αυτό σε όλα τα on_Click των objects
# θα πρέπει να καλείται στο τέλος το πιο κάτω function
# για να μετράνε οι γύροι. get_parent().advance().
# Μόνο στα clicks που μας ενδιαφέρουν να αλλάζει το turn.
func advance():
	if !advancing:
		advancing = true
		match turn:
			3: apple_drops()
			5: mouse_comes()
			7: horse_leaves()
		turn += 1
		print(turn)

func apple_drops(): if !$Apple.dropped: horse_leaves_to_eat()
func mouse_comes(): 
	if !$Pistol.hit_barrel: mouse_sleeps()
	else: mouse_scares_horse()

func horse_leaves(): if !$Mirror.broken: pass

func pistol_shoot(): 
	if $Barrel.dropped: return true; return false
	
func horse_leaves_to_eat():
		if !$Horse.ate:
			pass #Animation να πάει τρώει.
	
func mouse_scares_horse(): pass #Animation
func mouse_sleeps(): pass #Animation
func end_of_life(): pass #?????????

func _on_Anime_animation_finished(anim_name):
	match anim_name:
		"HatDrop": 
			if $Hive.dropped:
				$Anime.play("BirdBee")
			else: 
				$Anime.play("BirdHat")
				$Bird/Anime.play("Flight")

func _on_Timer_timeout():
	advancing = false
