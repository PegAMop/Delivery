extends Node

@export var map_length: int = 0

func finish_level():
	get_tree().quit()
	
func start_level():
	var level = get_node("CurrentLevel")
	var spawn_point = level.get_node("SpawnPoint")
	var hit = get_node("Hit")
	var camera = get_node("Camera2D")
	
	camera.global_position.x = spawn_point.global_position.x
	
	hit.global_position = spawn_point.global_position
	hit.linear_velocity = Vector2.ZERO
	hit.angular_velocity = 0
	hit.rotation = 0
	
	print(spawn_point.global_position)

func load_level(LevelNumber: int):
	var packed_level = load(str("res://Scenes/Levels/Level", LevelNumber, ".tscn"))
	var level = packed_level.instantiate()
	
	level.name = "CurrentLevel"
	map_length = level.size.x*level.scale.x
	
	add_child(level)
	start_level()
