extends Area2D
var cycles_to_next = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = Timer.new()
	add_child(timer)
	timer.start(randf_range(5,8))
	timer.connect("timeout", timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Kabele.animation == 'broke':
		Globals.energia -= 0.05
		

func timeout():
	if cycles_to_next == 0:
		$Kabele.animation = "broke"
	else:
		cycles_to_next -=1
	
func interact(player):
	var sprite = player.get_node_or_null("sprite")
	print('p',sprite.texture.resource_path)
	print('p2',"res://textures/itemy kluczowe/wrench_sprite_24x12.png")
	if sprite and sprite.texture.resource_path == "res://textures/itemy kluczowe/wrench_sprite_24x12.png":
		print('sjkdsdfjnkdsfhjkdcjdcsnkdscjndsjkdsjnkhjkdsfjkh')
		$Kabele.animation = "non-vroke"
		cycles_to_next += 5
		
		
		
	
