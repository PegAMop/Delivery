extends RigidBody2D

func _process(_delta: float) -> void:
	if global_position.y >= get_window().size.y+100:
		get_tree().current_scene.get_node("ScreenUI").toggle_menu("GameOver")
