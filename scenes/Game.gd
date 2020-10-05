extends Node2D

func dialog(text):
	$Label.text = text
	return $Label

onready var turn = 0
onready var advancing = false

# MANOLI
# Αν το διαβάζεις αυτό σε όλα τα on_Click των objects
# θα πρέπει να καλείται στο τέλος το πιο κάτω function
# για να μετράνε οι γύροι. turn().
# Μόνο στα clicks που μας ενδιαφέρουν να αλλάζει το turn.
func advance():
	if !advancing:
		advancing = true
		$Clock.move_index()
		turn += 1
		print(turn)

func check_event():
		match turn:
			3: apple_drops()
			5: mouse_comes()
			7: horse_leaves()

func apple_drops(): if !$Apple.dropped: $Anime.play("BadApple")
func mouse_comes():
	if !$Pistol.hit_barrel: mouse_sleeps()
	else: mouse_scares_horse()

func horse_leaves(): if !$Mirror.broken: pass

func pistol_shoot():
	if $Barrel.dropped and !$Barrel.shot:
		$Barrel.shot = true
		$Barrel/Anime.play("Whiskey")
		#return true; return false

func horse_leaves_to_eat():
		if !$Horse.ate:
			pass #Animation να πάει τρώει.

func mouse_scares_horse():
	$Anime.play("MouseHunting")
	$Mouse/Anime.play("Running")
	$Anime.play("HorseScared")
	$Horse/Anime.play("Walk")
func mouse_sleeps():
	$Anime.play("MouseWhiskey")
	$Mouse/Anime.play("Running")

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
		"Mirror":
			if !$Hat.dropped:
				$Mirror/Sprite.texture = "res://stam/monday/broken_mirror.png"
				$Mirror.desc = "TODO MANOLI // από δω κάτω μπορείς να παίξεις και τον ήχο"
			else: $Beam2.visible = true
			continue
		_:
			advancing = false
			check_event()

func _on_Timer_timeout():
	advancing = false
	check_event()
