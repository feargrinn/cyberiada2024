extends Area2D
var cycles_to_next = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = Timer.new()
	add_child(timer)
	timer.start(randf_range(3,5))
	timer.connect("timeout", timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $ogin.animation == 'pali':
		Globals.lab -= 0.05
		

func timeout():
	if cycles_to_next == 0:
		$ogin.animation = "pali"
		$"../AudioStreamPlayer2DAlarm".play()
	else:
		cycles_to_next -=1
	
func interact(player):
	print('dsfhjkdsgfhjvyuidsfjnk')
	var sprite = player.get_node("sprite")
	print('p',sprite.texture.resource_path)
	print('p2',"res://textures/itemy kluczowe/gasnica.final.png")
	#zmien niżej na gaśnice
	if sprite and sprite.texture.resource_path == "res://textures/itemy kluczowe/gasnica.final.png":
		print('nie pali print')
		$ogin.animation = "nie pali"
		$"../AudioStreamPlayer2DAlarm".stop()
		cycles_to_next += 5
		
		
		
		
		
	
