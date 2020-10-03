extends Node2D

var world = load("res://scenes/Game.tscn").instance()
var intro = load("res://scenes/Intro.tscn").instance()
var gaming = true
	
func _ready(): add_child(intro)
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed(): Input.action_press("ui_accept")
		else: Input.action_release("ui_accept")

func _process(delta):
	if Input.is_action_pressed("ui_accept") and !gaming:
		remove_child(intro)
		add_child(world)
		gaming = true

func _on_Timer_timeout():
	gaming = false
