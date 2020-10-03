extends Node2D

func dialog(text):
	var diag = preload("res://utils/dialog/SimpleDialogueBox.tscn").instance()
	diag.get_node("RichTextLabel").dialogue_text = text
	diag.position = Vector2(get_viewport().size.x/4, get_viewport().size.y/2)
	add_child(diag)
	return diag
