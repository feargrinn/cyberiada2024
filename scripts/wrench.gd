extends Area2D

func interact(player: Node2D) -> void:
	$AudioStreamPlayer.play()
	var sprite = get_node_or_null("sprite")
	if sprite and not player.get_node_or_null("sprite"):
		remove_child(sprite)
		player.add_child(sprite)
	elif player.get_node_or_null("sprite") and not get_node_or_null("sprite"):
		sprite = player.get_node("sprite")
		if(sprite != null):
			player.remove_child(sprite)
			add_child(sprite)
