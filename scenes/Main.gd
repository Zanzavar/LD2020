extends Node2D

var world = load("res://scenes/Game.tscn").instance()
var gaming = true
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed(): Input.action_press("ui_accept")
		else: Input.action_release("ui_accept")

func _process(delta):
	if Input.is_action_pressed("ui_accept") and !gaming:
		add_child(world)
		gaming = true

func _on_Timer_timeout():
	gaming = false
