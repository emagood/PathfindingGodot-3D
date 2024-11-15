extends CharacterBody3D


const SPEED = 10
const JUMP_VELOCITY = 15


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += Vector3(0, -30.0, 0) * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	
	
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	#Expiriment
	#transform.origin += Vector3(-SPEED * 0.01,0,0)
	#rotate_y(deg_to_rad(2))
	#transform.basis = Basis(Vector3(1,0,0), deg_to_rad(10))
	#transform.origin += Vector3(-SPEED * 0.01,0,0)

	move_and_slide()
