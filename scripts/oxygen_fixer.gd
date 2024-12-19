extends Area2D

const default_time = 100
var timer : Timer

func _ready() -> void:
	timer = Timer.new()
	timer.one_shot = true
	add_child(timer)
	timer.start(default_time)
	timer.start()
	timer.connect("timeout", get_tree().root.get_node("gui/game").lose.bind("Oxygen Timeout :("))

func interact(_who_interacted : Node2D):
	timer.stop()
	timer.start(default_time * Globals.urgency)
	Globals.urgency *= 0.95
