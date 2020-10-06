extends Node2D

func dialog(text):
	$Label.text = text
	return $Label

onready var turn = 0
onready var advancing = false

func advance():
	if !advancing:
		advancing = true
		$Clock.move_index()
		turn += 1
		print(turn)

func check_event():
		match turn:
			3:
				if !$BadApple.dropped:
					advancing = true
					apple_drops()
				turn += 1
			6:
				advancing = true
				mouse_comes()
				turn += 1
			9:
				advancing = true
				horse_leaves()
				turn += 1

func apple_drops(): if !$Apple.dropped: $Anime.play("BadApple")
func mouse_comes():
	if $Pistol.hit_barrel: mouse_sleeps()
	else: mouse_scares_horse()

func horse_leaves(): if !$Mirror.broken: pass

func pistol_shoot():
	if $Barrel.dropped and !$Barrel.shot:
		$Barrel.shot = true
		$Barrel/Anime.play("Whiskey")

func horse_leaves_to_eat():
		if !$Horse.ate:
			pass #Animation να πάει τρώει.

func mouse_scares_horse():
	$Anime.play("MouseHunting")
	$Mouse/Anime.play("Running")
	$Horse/Anime.play("Walk")
	end_of_life()
	
func mouse_sleeps():
	$Anime.play("MouseWhiskey")

func mouse_real_sleep():
	$Mouse/Anime.stop()

func mouse_real_drunk():
	$Mouse/Anime.play("Drunk")

func end_of_time():
	$Anime.play("HorseScared")
	$Horse/Anime.play("Walk")
	end_of_life()		

func end_of_life():
	$Bill/Anime.play("Death")
	$Bill.dead = true

func _on_Anime_animation_finished(anim_name):
	match anim_name:
		"HatDrop":
			if $Hive.dropped:
				$Anime.play("BirdBee")
				$Bird/Anime.play("Flight")
			else:
				$Bird.took_it = true
				$Anime.play("BirdHat")
				$Bird/Anime.play("Flight")
		"Apple":
			$Horse/Anime.play("Eating")
		"BadApple":
			$Anime.play("HorseMoving")
			$Horse/Anime.play("Walk")
		"HorseMoving":
			$Horse/Anime.play("Eating")
			end_of_life()
		"RopeBurning":
			get_parent().add_child(load("res://scenes/Success.tscn").instance())
			get_parent().remove_child(self)
		"Mirror":
			if !$Hat.dropped or ($Hat.dropped and $Bird.took_it):
				$Mirror/Sprite.texture = load("res://stam/monday/broken_mirror.png")
				$Mirror.desc = "7 years bad luck. I guess that's good news considering the circumstances"
				$Mirror/Audio.play(0.3)
				$Mirror.broken = true
				$Hat.z_index = 1
			else: check_win()
			$Mirror/Clickable.visible = true
			continue
		_:
			advancing = false
			check_event()

func check_win():
	if $Hat.dropped and $Bag.dropped and !$Mirror.broken and $Leaves.dissolved:
		$Beam2.visible = true
		$Anime.play("RopeBurning")

func _on_Timer_timeout():
	advancing = false
	check_event()
