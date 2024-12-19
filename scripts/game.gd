extends Node2D



# Called every frame. 'delta' is the elapsed time since the previous frame.

func _ready() -> void:
	#print('trollprint')
	$"AudioStreamPlayer".play()

func _process(_delta: float) -> void:
	if Input.is_action_just_released("ui_cancel"):
		get_tree().change_scene_to_file("res://main_menu.tscn")
