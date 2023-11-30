extends Control

@onready var bottombar = $BottomBar
@onready var start_button = $StartButton
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_button_button_up():
	bottombar.hide()
	start_button.hide()
