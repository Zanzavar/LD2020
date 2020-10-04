extends "res://objects/ClickObject.gd"

onready var hit_barrel = false
onready var desc = "This needs a hint, Manolis..."

func on_Click(): hit_barrel = get_parent().pistol_shoot()
