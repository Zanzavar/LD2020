extends Node2D

var intro = load("res://scenes/Intro.tscn").instance()

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		Input.action_release("ui_accept")
		get_parent().add_child(intro)
		get_parent().remove_child(self)
