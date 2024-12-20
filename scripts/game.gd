extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
var scene = preload("res://scenes/smaller_scenes/gameover.tscn")

func _ready() -> void:
	$"AudioStreamPlayer".play()

func _process(_delta: float) -> void:
	if Input.is_action_just_released("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/key_scenes/main_menu.tscn")
	for a in $"../MarginContainer/HBoxContainer/HBoxContainer".get_children():
		var b = a.name
		#print(b,'is the thing im tryna print ',Globals.get(b))
		var teksturka_loc = "../MarginContainer/HBoxContainer/HBoxContainer/"+b+"/Sprite2D"
		if Globals.get(b) > 66:
			if Globals.get(b) > 100:
				Globals.set(b, 100)
			
			var kurwatura = load("res://textures/Symbole GUI statku/" + b.capitalize() + "Good.png")
			get_node(teksturka_loc).texture = kurwatura
			#$"../MarginContainer/HBoxContainer/HBoxContainer/cisnienie/Sprite2D"
			#$"../MarginContainer/HBoxContainer/HBoxContainer/lab"
			#get_node(teksturka_loc).Texture = ("res://textures/Symbole GUI statku/" + b.capitalize() + "good.png")
			pass
			#"res://textures/Symbole GUI statku/CisnienieMid.png
		elif Globals.get(b) <= 66 and Globals.get(b) > 33:
			#po ilosci printow widac ze przeszlam przez stany emocjonalne piszac ten kod
			#print(b)
			#print(teksturka_loc)
			#print("../MarginContainer/HBoxContainer/HBoxContainer/lab/Sprite2D")
			#print($"../MarginContainer/HBoxContainer/HBoxContainer/lab/Sprite2D")
			#print(get_node(teksturka_loc))
			#if teksturka_loc == "../MarginContainer/HBoxContainer/HBoxContainer/lab/Sprite2D":
			#	print('EUREKA')
			#print(get_node("\"../MarginContainer/HBoxContainer/HBoxContainer/"+b+"/Sprite2D"))
			#print($"../MarginContainer/HBoxContainer/HBoxContainer/lab/Sprite2D")
			#print($"../MarginContainer/HBoxContainer/HBoxContainer/cisnienie/Sprite2D".texture)
			#print(get_node(teksturka_loc).get_child(0))
			#print("res://textures/Symbole GUI statku/" + b.capitalize() + "Mid.png")
			var kurwatura = load("res://textures/Symbole GUI statku/" + b.capitalize() + "Mid.png")
			get_node(teksturka_loc).texture = kurwatura
			
		elif Globals.get(b) <=33  and Globals.get(b) >0:
			var kurwatura = load("res://textures/Symbole GUI statku/" + b.capitalize() + "Bad.png")
			get_node(teksturka_loc).texture = kurwatura
			pass
		elif Globals.get(b) <=0:
			Globals.overall_health -= 1
			Globals.set(b, 0)
			#prosze o uprzejme zignorowanie faktu ze to dziala tylko co 8 for w zwiazku z czym wartosc dochodzi do -8 zanim sie poprawi
			#JA WIEM.
			#prosze o zignorowanie poprzednich dwoch komentarzy. były one nie na miejscu jak xle wysuniete linijki kodu
			pass
	Globals.urgency += 0.01
	Globals.o2 -= 0.01
	#print(Globals.o2)
	$"../MarginContainer/HBoxContainer/Control/Sprite2D/ColorRect".size.x = 645 * Globals.overall_health/100
	if Globals.overall_health <= 0:
		lose('zycie')
	
	
#this just kinda appeared on me???
#<<<<<<< Updated upstream
#=======
		
#along with this????
#>>>>>>> Stashed changes
func lose(why = "No reasyon at all"):
	var gameovar = scene.instantiate()
	add_child(gameovar) 
	gameovar.losingtext.text = why
	remove_child(gameovar)
	var packed_scene = PackedScene.new()
	packed_scene.pack(gameovar)
	get_tree().change_scene_to_packed(packed_scene)
	
	
	
	
