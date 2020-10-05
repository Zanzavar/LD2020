extends Node2D

onready var menu = load("res://scenes/Menu.tscn").instance()

onready var label = get_node("Successtext")


func _ready():
	pass

func _process(_delta):
	pass



func _on_Button_button_down():
	get_parent().add_child(menu)
	get_parent().remove_child(self)
