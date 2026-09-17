
extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# A / D movement
	var direction = 0

	if Input.is_key_pressed(KEY_A):
		direction -= 1
	if Input.is_key_pressed(KEY_D):
		direction += 1

	velocity.x = direction * SPEED

	# W = jump
	if Input.is_key_pressed(KEY_W) and is_on_floor():
		velocity.y = -400.0

	move_and_slide()
