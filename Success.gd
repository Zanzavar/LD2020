extends Node2D

onready var menu = load("res://scenes/Menu.tscn").instance()
onready var label = get_node("SuccessText")

func _ready(): get_parent().get_node("BackgroundSong").stop()
func _on_Button_button_down():
	get_parent().add_child(menu)
	get_parent().remove_child(self)
