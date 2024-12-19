extends Control


@onready var losingtext = $MarginContainer/VBoxContainer/why
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.play()
	
	for object in $MarginContainer/VBoxContainer/HBoxContainer.get_children():
		if object is Button:
			print(object.name)
			object.connect("pressed", _on_button_pressed.bind(object.name))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	pass

func _on_button_pressed(button_name : String):
	print('welp')
	print('welppp')
	match button_name:
		"quittomain":
			get_tree().change_scene_to_file("res://scenes/key_scenes/main_menu.tscn")
		"tryagain":
			get_tree().change_scene_to_file("res://scenes/key_scenes/game.tscn")
		"quit":
			get_tree().quit()

	
