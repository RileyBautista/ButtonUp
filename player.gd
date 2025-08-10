extends CharacterBody2D


@export var SPEED = 130.0 
@export var JUMP_VELOCITY = -300.0
@export var stop = false
@export var inverseGravity = false
@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if inverseGravity == true:
		up_direction.y = 1.0
		animated_sprite.flip_v = true
	elif inverseGravity == false:
		up_direction.y = -1.0
		animated_sprite.flip_v = false
	# Add the gravity.
	if not is_on_floor() and not(stop==true):
		if inverseGravity == false:
			velocity = velocity + get_gravity() * delta
		else:
			velocity = velocity - get_gravity() * delta
	if stop == true:
		velocity.x = 0
		velocity.y = 0
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor() and stop == false:
		if inverseGravity == true:
			velocity.y = (-1) * JUMP_VELOCITY
		else:
			velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction and stop == false:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction == 0 and not(stop == true):
		animated_sprite.play("idle")
	elif not(stop == true):
		animated_sprite.play("running")
	if direction < 0:
		animated_sprite.flip_h = true
	elif direction > 0:
		animated_sprite.flip_h = false
	move_and_slide()
