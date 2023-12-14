class_name Interactable extends Node2D

@export var interact_label = "none"
@export var interact_type = "none"
@export var interact_value = "none" 












#var state = "tree" # tree, tree_falling, chopped_tree
#var player_in_area = false
#@onready var anim = get_node("AnimationPlayer") 

#func _ready():
#	if state == "tree":
#		$growth_timer.start()

#func _process(_delta):
#	if state == "tree":
#		anim.play("tree")
#	if player_in_area:
#		if Input.is_action_just_pressed("e"):
#			print("it worked")
#			state = "tree_falling"
#			anim.play("tree_falling")
#			$growth_timer.start()


#func _on_choppable_area_body_entered(body:Node2D):
#	if body.has_method("Player"):
#		player_in_area == false

#func _on_choppable_area_body_exited(body:Node2D):
#	if body.has_method("Player"):
#		player_in_area == true

#func _on_growth_timer_timeout():
#	if state == "tree_falling":
#		state = "tree"
