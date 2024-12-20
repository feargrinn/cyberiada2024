extends Area2D
func _ready() -> void:
	connect("body_entered",swiatlo)
	connect("body_exited",nie)
func interact(player: Node2D) -> void:
	var sprite = get_node_or_null("sprite")
	if sprite and not player.get_node_or_null("sprite"):
		$AudioStreamPlayer.play()
		nie(self)
		remove_child(sprite)
		player.add_child(sprite)
	elif player.get_node_or_null("sprite") and not get_node_or_null("sprite"):
		sprite = player.get_node("sprite")
		$AudioStreamPlayer2.play()
		if(sprite != null):
			player.remove_child(sprite)
			add_child(sprite)
func swiatlo(body = null):
	if(get_node_or_null("sprite")):
		if body.name != "TileMapLayer":
			get_node_or_null("sprite").modulate= Color("125aff")
func nie(_body = null):
	if(get_node_or_null("sprite")):
		get_node_or_null("sprite").modulate= Color("ffffff")
	
