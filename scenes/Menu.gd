extends Node2D

var intro = load("res://scenes/Intro.tscn").instance()
var instructions = load("res://scenes/Instructions.tscn").instance()
onready var backgroundwind = get_parent().get_node("BackgroundWind")
onready var billwheez = get_parent().get_node("BillWheez")

func _ready():
	get_node("Control/Start game").grab_focus()
	
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		if get_node("Control/Start game").grab_focus():
			_on_Start_game_button_down()
		elif get_node("Control/Instructions").grab_focus():
			_on_Instructions_button_down()

func _on_Start_game_button_down():
	get_parent().add_child(intro)
	get_parent().remove_child(self)
	backgroundwind.play()
	billwheez.play()
	


func _on_Instructions_button_down():
	get_parent().add_child(instructions)
	get_parent().remove_child(self)
