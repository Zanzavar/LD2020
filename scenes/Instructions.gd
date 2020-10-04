extends Node2D

onready var menu = load("res://scenes/Menu.tscn").instance()


func _on_Button_button_down():
	Input.action_release("ui_accept")
	get_parent().add_child(menu)
	get_parent().remove_child(self)
	
