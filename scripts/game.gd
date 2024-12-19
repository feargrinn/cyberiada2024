extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
var scene = preload("res://scenes/smaller_scenes/gameover.tscn")

func _ready() -> void:
	$"AudioStreamPlayer".play()

func _process(_delta: float) -> void:
	if Input.is_action_just_released("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/key_scenes/main_menu.tscn")

func lose(why = "No reasyon at all"):
	var gameovar = scene.instantiate()
	
	print("You lost ", why, " :(")
	add_child(gameovar) 
	gameovar.losingtext.text = why
	remove_child(gameovar)
	var packed_scene = PackedScene.new()
	packed_scene.pack(gameovar)
	get_tree().change_scene_to_packed(packed_scene)
	
	
