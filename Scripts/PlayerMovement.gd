extends CharacterBody2D
# speed in pixels/sec
var speed = 300
@onready var all_interactions = []
@onready var interactLabel = $"Interaction Components/InteractLabel"
var player_state
#anytime the player.tscn is rendered play the idle animation



func _physics_process(_delta):
    var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

    if direction.x == 0 and direction.y ==0:
        player_state = 'idle'
    elif direction.x != 0 and direction.y != 0:
        player_state = 'walking'

    velocity = direction * speed
    move_and_slide()
	

func _on_interaction_area_area_entered(area):
    all_interactions.insert(1, area)
    update_interactions()

func _on_interaction_area_area_exited(area):
    all_interactions.erase(area)
    update_interactions()

func update_interactions():
    if all_interactions:
        interactLabel.text = all_interactions[0].interact_label
    else:
        interactLabel.text = ""