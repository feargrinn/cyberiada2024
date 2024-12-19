extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("interact_A"):
		try_to_interact()
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	var direction_v := Input.get_axis("ui_up", "ui_down")
	if direction_v:
		velocity.y = direction_v * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

# checks if player collides with interactable areas, interacts if
func try_to_interact():
	pass
