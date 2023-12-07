extends CharacterBody2D
# speed in pixels/sec
var speed = 400

#anytime the player.tscn is rendered play the idle animation

	

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		# Move as long as the key/button is pressed.
		position.x += speed * delta
	
	if Input.is_action_pressed("move_left"):
		# Move as long as the key/button is pressed.
		position.x -= speed * delta

	if Input.is_action_pressed("move_up"):
		# Move as long as the key/button is pressed.
		position.y += speed * delta

	if Input.is_action_pressed("move_down"):
		# Move as long as the key/button is pressed.
		position.y -= speed * delta
	
		#if escape key is pressed take use to the homescreen
	if Input.is_action_pressed("pause_menu"):
		get_tree().change_scene_to_file("res://main.tscn")

	