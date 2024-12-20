extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = Timer.new()
	add_child(timer)
	timer.start(randf_range(1,5))
	timer.connect("timeout", timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func timeout():
	$Kabele.animation = "broke"
	
func interact():
	$Kabele.animation = "non-vroke"
	
