extends Node2D

func dialog(text):
	var diag = preload("res://utils/dialog/SimpleDialogueBox.tscn").instance()
	diag.get_node("RichTextLabel").dialogue_text = text
	diag.position = Vector2(300, 200)
	add_child(diag)
	return diag
