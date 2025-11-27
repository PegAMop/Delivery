extends TextureRect

func _ready() -> void:
	get_tree().paused = visible

func _on_levels_button_up() -> void:
	$ButtonSFX.play()
	get_parent().toggle_menu("MainMenu")
	get_parent().toggle_menu("Levels")
	
func _on_quit_button_up() -> void:
	$ButtonSFX.play()
	get_tree().quit()

func _on_settings_button_up() -> void:
	$ButtonSFX.play()
	pass # Replace with function body.
