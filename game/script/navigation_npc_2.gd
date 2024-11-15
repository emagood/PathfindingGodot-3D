extends CharacterBody3D

@export var NPC_SPEED : float = 5.0
@onready var agent_ok = false
@onready var navigation_agent_3d = $NavigationAgent3D

func _ready() -> void:
	await get_tree().create_timer(2.0).timeout

	select_new_destination()
	pass

func _physics_process(delta: float) -> void:
	#if agent_ok == false:
		#return
	var destination = navigation_agent_3d.get_next_path_position()
	#var dist = destination.distance_to(global_position)
	#prints(dist)
	var direction_to_destination = destination - global_position
	var direction = direction_to_destination.normalized()

	velocity = direction * NPC_SPEED
	move_and_slide()

func select_new_destination():
	var random_position := Vector3.ZERO
	random_position.x = randf_range(-25.0, 25.0)
	random_position.z = randf_range(-25.0, 25.0)
	navigation_agent_3d.set_target_position(random_position)

	prints(navigation_agent_3d.distance_to_target() , "listo dis_to")
	prints(navigation_agent_3d.get_current_navigation_path())

	navigation_agent_3d.get_next_path_position()
	
	

func _on_navigation_agent_3d_navigation_finished() -> void:
	select_new_destination()


func _on_navigation_agent_3d_target_reached() -> void:
	prints("listo")
	agent_ok = true
	#prints(navigation_agent_3d.get_current_navigation_path())
	pass # Replace with function body.


#func _on_navigation_agent_3d_path_changed() -> void:
	#prints("listo path")
	#pass # Replace with function body.

#
#func _on_navigation_agent_3d_link_reached(details: Dictionary) -> void:
	#prints(details)
	#
	#pass # Replace with function body.
#
#
#func _on_navigation_agent_3d_waypoint_reached(details: Dictionary) -> void:
	#prints(details)
	#pass # Replace with function body.
