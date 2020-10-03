extends Node2D

var dialog

func _ready():
	pass

func _on_Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT and event.pressed:
				get_parent().on_Click()

func _on_Area_mouse_entered():
	dialog = get_parent().get_parent().dialog(get_parent().desc)


func _on_Area_mouse_exited():
	get_parent().get_parent().remove_child(dialog)
	
