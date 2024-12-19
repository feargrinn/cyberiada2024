extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.play()
	for object in $MarginContainer/VBoxContainer.get_children():
		if object is Button:
			object.connect("pressed", _on_button_pressed.bind(object.name))
	pass # Replace with function body.

func _on_button_pressed(button_name : String):
	match button_name:
		"PLAY":
			get_tree().change_scene_to_file("res://scenes/key_scenes/game.tscn")
		"SETTINGS":
			get_tree().change_scene_to_file("res://scenes/key_scenes/settings.tscn")
		"QUIT":
			get_tree().quit()
