extends "res://objects/Clickable.gd"

onready var hit_barrel = false
onready var desc = "Being anti-gun is hip these days."

func on_Click(): 
	if !$Gunshot.playing and allowed():
		$Gunshot.play()
		hit_barrel = get_parent().pistol_shoot()
		turn()
		unturn()
