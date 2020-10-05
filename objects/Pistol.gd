extends "res://objects/Clickable.gd"

onready var hit_barrel = false
onready var desc = "Being anti-gun is hip these days."

func on_Click(): 
	if !$Gunshot.playing and allowed():
		$Gunshot.play()
		if get_parent().get_node("Barrel").dropped:
			get_parent().pistol_shoot()
			hit_barrel = true
		turn()
		unturn()
