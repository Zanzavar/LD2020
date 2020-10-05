extends Node2D

export var state = 0
onready var world = load("res://scenes/Game.tscn").instance()

func _ready():
	$Introtext.text = "Bill realised that robbing the federal bank was probably not his greatest idea, considering the sheriff and his lackeys were having their break in the nearby saloon."

func _process(_delta):
	if !$AnimationPlayer.is_playing() and Input.is_action_pressed("ui_accept"):
		Input.action_release("ui_accept")
		if state == 0:
			$AnimationPlayer.play("Text2")
		elif state == 1:
			$AnimationPlayer.play("Text3")
		else:
			$AnimationPlayer.play("FadeOut")
		state += 1

func _on_AnimationPlayer_animation_finished(anim_name):
	if state == 3:
		get_parent().add_child(world)
		get_parent().remove_child(self)
