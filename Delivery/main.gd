extends Node

func finish_level():
	get_tree().quit()

func load_level(LevelNumber: int):
	var packed_level = load(str("res://Scenes/Levels/Level", 1, ".tscn"))
	var level = packed_level.instantiate()
	
	level.name = "CurrentLevel"
	
	add_child(level)
