extends TextureRect

@onready var laser = load("res://Scenes/laser.tscn")

var can_shoot: bool = true

func _input(input: InputEvent) -> void:
	if input.is_action_pressed("leftclick") and can_shoot:
		var new_laser = laser.instantiate()
		add_child(new_laser)
		
		new_laser.position = size/2
		new_laser.look_at(get_global_mouse_position())
		new_laser.rotation -= PI/2
		
		can_shoot = false
		
		var pitch_offset = (randf()-1)*0.3
		$ShootSFX.pitch_scale = 1+pitch_offset
		$ShootSFX.play()
		$Timer.start()

func _on_timer_timeout() -> void:
	can_shoot = true
