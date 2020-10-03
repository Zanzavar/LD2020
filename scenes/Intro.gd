extends Node2D

export var state = 0

onready var label = get_node("Introtext")

func _ready():
	label.text = "Bill knew that robbing the federal bank was probably not the greatest idea he ever had. Especially with the sheriff and his lackeys lurking nearby." 

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		if state == 0:
			$AnimationPlayer.play("Text2")
		#elif state == 1:
		#	$AnimationPlayer.play("Text2")
		else:
			$AnimationPlayer.play("Text3")
			
func _on_AnimationPlayer_animation_finished(anim_name):
	state+=1
	#$AnimationPlayer.play("TextFadeIn")
