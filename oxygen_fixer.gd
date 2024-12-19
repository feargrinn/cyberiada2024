extends Area2D

var currently_interactable = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func oxygen_entered(_area: Node2D) -> void:
	currently_interactable = true
	# Replace with function body.


func oxygen_exited(_area: Node2D) -> void:
	currently_interactable = false
	pass # Replace with function body.
