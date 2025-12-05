extends VBoxContainer

func _on_timer_timeout() -> void:
	get_parent().toggle_menu(name)

func restart():
	get_tree().current_scene.start_level()
	$Timer.start()
	
func _on_button_button_up() -> void:
	restart()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		if not visible:
			get_tree().current_scene.get_node("ScreenUI").toggle_menu(name)
		restart()
	elif event.is_action_pressed("reopen"):
		get_tree().reload_current_scene()
