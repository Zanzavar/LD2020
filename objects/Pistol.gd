extends "res://objects/ClickObject.gd"

onready var hit_barrel = false
onready var desc = "Being anti-gun is hip these days."

func on_Click(): hit_barrel = get_parent().pistol_shoot()
