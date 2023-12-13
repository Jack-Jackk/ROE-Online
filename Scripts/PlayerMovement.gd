extends CharacterBody2D
# speed in pixels/sec
var speed = 300

var player_state
#anytime the player.tscn is rendered play the idle animation



func _physics_process(delta):
    var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

    if direction.x == 0 and direction.y ==0: 
        player_state = 'idle'
    elif direction.x != 0 and direction.y != 0:
        player_state = 'walking'

    velocity = direction * speed 
    move_and_slide()
	

	