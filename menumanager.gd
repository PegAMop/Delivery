extends CanvasLayer

func toggle_menu(menu_name: String):
	var menu = get_node(menu_name)
	menu.visible = not menu.visible
	var menu_music = menu.get_node("Music")
	if menu_music:
		if menu.visible:
			menu_music.play()
		else:
			menu_music.stop()
	get_tree().paused = menu.visible
