extends Node2D

var menu = load("res://scenes/Menu.tscn").instance()
	
func _ready(): add_child(menu)
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed(): Input.action_press("ui_accept")
		else: Input.action_release("ui_accept")
