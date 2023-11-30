extends Node2D
signal move_vector

var move = Vector2(0,0)
var origin = Vector2(530, 1600)
var touch = origin
var stick = origin

func _ready():
	pass

func _unhandled_input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			touch = event.position
			stick = touch
		if !event.pressed:
			touch = origin
			stick = origin
			move = Vector2(0,0)
	if event is InputEventScreenDrag:
		stick = touch - (touch - event.position).limit_length(100)
		move = stick - touch
		print(stick)
	queue_redraw()

func _draw():
	var color = Color(1,1,1,0.5)
	var rad = 100
	draw_circle(touch, rad, color)
	draw_circle(stick, rad/2, color)
	
func _process(delta):
	emit_signal("move_vector", move.normalized()*delta)


func _on_move_vector():
	pass # Replace with function body.
