extends CharacterBody2D


const SPEED = 300.0


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("interact_B"):
		try_to_interact()
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("B_lewo", "B_prawo")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	var direction_v := Input.get_axis("B_gora", "B_dol")
	if direction_v:
		velocity.y = direction_v * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()
	
#print(self.get_collider())
# checks if player collides with interactable areas, interacts if
func try_to_interact():
	#print(get_tree().get_nodes_in_group("interactable"))
	for area in get_tree().get_nodes_in_group("interactable"):
		#print(area)
		if area.overlaps_body(self):
			area.interact(self)
			
	
