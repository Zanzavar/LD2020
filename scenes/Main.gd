extends Node2D

onready var menu = load("res://scenes/Menu.tscn").instance()
	
func _ready(): add_child(menu)
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed(): Input.action_press("ui_accept")
		else: Input.action_release("ui_accept")
		
	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen
