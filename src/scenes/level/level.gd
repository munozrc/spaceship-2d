extends Node2D

var camera_velocity: Vector2 = Vector2( 0, 30 );

func _process(delta):
	get_node("BackgroundContainer").scroll_offset += camera_velocity * delta
