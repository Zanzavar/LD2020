extends Node2D

func dialog(text):
	var diag = preload("res://utils/dialog/SimpleDialogueBox.tscn").instance()
	diag.get_node("RichTextLabel").dialogue_text = text
	diag.position = Vector2(get_viewport().size.x/4, get_viewport().size.y/2 + 19)
	add_child(diag)
	return diag

onready var turn = 0
func advance():
	match turn:
		3: apple_drops()
		5: mouse_comes()
		7: horse_leaves()
	turn += 1

func apple_drops(): if !$Apple.dropped: horse_leaves_to_eat()
func mouse_comes(): if !$Pistol.hit_barrel: mouse_sleeps()
func horse_leaves(): if !$Mirror.broken: pass

func pistol_shoot(): 
	if $Barrel.dropped: return true; return false
	
func horse_leaves_to_eat(): pass
func mouse_sleeps(): pass
func end_of_life(): pass


func _on_Anime_animation_finished(anim_name):
	match anim_name:
		"HatDrop": 
			if $Hive.dropped:
				$Anime.play("BirdBee")
			else: 
				$Anime.play("BirdHat")
				$Bird/Anime.play("Flight")
				
