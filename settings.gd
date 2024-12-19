extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for button in $MarginContainer/VBoxContainer/NAVIGATION.get_children():
		button.connect("pressed", _on_button_pressed.bind(button.name))

func _on_button_pressed(button_name : String):
	match button_name:
		"BACK":
			get_tree().change_scene_to_file("res://main_menu.tscn")
		"CONFIRM":
			get_tree().change_scene_to_file("res://main_menu.tscn")
