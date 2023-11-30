extends HBoxContainer

@export var buttons: Array[Button]

enum Place {LeftLeft, Left, Center, Right, RightRight}
var yellow_theme: Theme
var yellow_style: StyleBoxFlat

func _ready():
	var centerButton = buttons[Place.Center]
	centerButton.custom_minimum_size.x *= 1.8
	centerButton.expand_icon = true
	yellow_theme = Theme.new()
	yellow_style = StyleBoxFlat.new()
	yellow_style.bg_color = Color(1, 1, 0)
	yellow_theme.set_stylebox("yellow_background", "StyleBoxFlat", yellow_style)
	centerButton.set_theme(yellow_theme)

func _process(delta):
	pass

func make_bigger(p: Place):
	buttons[p].custom_minimum_size.x = 324
	buttons[p].expand_icon = true
	for button in buttons:
		if button != buttons[p]:
			button.custom_minimum_size.x = 180
			button.expand_icon = false

func _on_left_left_menu_button_button_up():
	make_bigger(Place.LeftLeft)

func _on_left_menu_button_button_up():
	make_bigger(Place.Left)

func _on_center_menu_button_button_up():
	make_bigger(Place.Center)

func _on_right_menu_button_button_up():
	make_bigger(Place.Right)

func _on_right_right_menu_button_button_up():
	make_bigger(Place.RightRight)
