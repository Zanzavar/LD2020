extends Node2D

onready var menu = load("res://scenes/Menu.tscn").instance()
onready var gunshot = get_parent().get_node("Gunshot")


func _on_Button_button_down():
	Input.action_release("ui_accept")
	get_parent().add_child(menu)
	get_parent().remove_child(self)
	gunshot.play()
	
