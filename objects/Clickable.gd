extends Node2D

var dialog

func _ready():
	pass

func _on_Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT and event.pressed:
				pass

func _on_Area_mouse_entered():
	print("hello??")
	dialog = get_parent().get_parent().dialog("hello there?")


func _on_Area_mouse_exited():
	print("hello??q")
	get_parent().get_parent().remove_child(dialog)
	
