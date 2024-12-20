extends Area2D
var cycles_to_next = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = Timer.new()
	add_child(timer)
	timer.start(randf_range(1,3))
	timer.connect("timeout", timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $ogin.animation == 'pali':
		Globals.lab -= 0.15
		

func timeout():
	if cycles_to_next == 0:
		$ogin.animation = "pali"
	else:
		cycles_to_next -=1
	
func interact(player):
	var sprite = player.get_node_or_null("sprite")
	#print('p',sprite.texture.resource_path)
	#print('p2',"res://textures/itemy kluczowe/wrench_sprite_24x12.png")
	#zmien niżej na gaśnice
	if sprite and sprite.texture.resource_path == "res://.godot/imported/gasnica.final.png-5bca7fbd06bf146bd03670ba483ab2a2.ctex":
		#print('sjkdsdfjnkdsfhjkdcjdcsnkdscjndsjkdsjnkhjkdsfjkh')
		$ogin.animation = "nie pali"
		cycles_to_next += 5
		
		
		
	
