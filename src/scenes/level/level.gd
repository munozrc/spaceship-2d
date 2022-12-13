extends Node2D

func _physics_process(delta):
	get_node("BackgroundContainer").scroll_offset += Vector2(0, 1) * 100 * delta
