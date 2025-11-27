extends VBoxContainer

func _on_timer_timeout() -> void:
	get_parent().toggle_menu(name)
	
func _on_button_button_up() -> void:
	get_tree().current_scene.start_level()
	$Timer.start()
