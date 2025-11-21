extends TextureRect

var button_array: Array[int]

func pressed(button_number) -> void:
	get_parent().toggle_menu("Levels")
	get_tree().current_scene.load_level(button_number)

func _ready() -> void:
	var children = $ButtonGrid.get_children()
	button_array.resize(len(children))
	for button in children:
		button.button_up.connect(pressed.bind(int(button.name)))
