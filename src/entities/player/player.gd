extends KinematicBody2D

const SPEED = 200
onready var motion = Vector2.ZERO

func _ready():
	$AnimatedSprite.play("idle", false)

func _physics_process(_delta):
	var axis = Vector2.ZERO
	
	axis.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	axis.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if axis.x == 1:
		$AnimatedSprite.animation = "right"
	elif axis.x == -1:
		$AnimatedSprite.animation = "left"
	else:
		$AnimatedSprite.animation = "idle"
		
	axis.x *= SPEED
	axis.y *= SPEED
		
	motion = move_and_slide(axis, Vector2.UP)
