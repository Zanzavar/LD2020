extends Node2D

onready var intro = load("res://scenes/Intro.tscn").instance()
onready var instructions = load("res://scenes/Instructions.tscn").instance()
onready var backgroundSong = get_parent().get_node("BackgroundSong")
onready var gunshot = get_parent().get_node("Gunshot")

func _ready():
	get_node("Control/Start game").grab_focus()

func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
		if get_node("Control/Start game").grab_focus():
			_on_Start_game_button_down()
		elif get_node("Control/Instructions").grab_focus():
			_on_Instructions_button_down()

func _on_Start_game_button_down():
	Input.action_release("ui_accept")
	get_parent().add_child(intro)
	get_parent().remove_child(self)
	backgroundSong.play()
	gunshot.play()

func _on_Instructions_button_down():
	Input.action_release("ui_accept")
	get_parent().add_child(instructions)
	get_parent().remove_child(self)
	gunshot.play()
