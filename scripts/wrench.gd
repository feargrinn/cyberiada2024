extends Area2D

var currently_interactable = false




func _on_body_entered(body: Node2D) -> void:
	currently_interactable = true


func _on_body_exited(body: Node2D) -> void:
	currently_interactable = false

func interact(player: Node2D) -> void:
	pass
