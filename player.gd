extends CharacterBody2D

var movement_speed = 100.0

func _physics_process(delta):
	movement()

func movement():
	pass

func _on_joystick_move_vector(input):
	position += input*movement_speed
