extends Camera2D

@export var target: Node
@export var scroll_speed: int
var offset_speed = 0

func _physics_process(_delta: float) -> void:
	if position.x < target.position.x:
		offset_speed = int(abs(position.x-target.position.x))%10
	elif offset_speed > 0:
		offset_speed -=1
	position.x += scroll_speed + offset_speed
