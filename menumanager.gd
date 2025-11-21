extends CanvasLayer

func toggle_menu(menu_name: String):
	var menu = get_node(menu_name)
	menu.visible = not menu.visible
	get_tree().paused = menu.visible
