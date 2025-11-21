extends TextureRect

@onready var laser = load("res://Scenes/laser.tscn")

var can_shoot: bool = true

func _input(input: InputEvent) -> void:
	if input.is_action_pressed("leftclick"):
		var new_laser = laser.instantiate()
		add_child(new_laser)
		
		new_laser.position = size/2
		new_laser.look_at(get_global_mouse_position())
		new_laser.rotation -= PI/2
		
		can_shoot = false
		$Timer.start()

func _on_timer_timeout() -> void:
	can_shoot = true
