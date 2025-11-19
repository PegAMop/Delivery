extends RigidBody2D

@export var speed = -1000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(get_window().size.x,RandomNumberGenerator.new().randf_range(get_window().size.y/6,get_window().size.y))
	linear_velocity = Vector2(speed,0)
	if position.y <= get_window().size.y/2:
		gravity_scale = position.y/2000
	else:
		gravity_scale = -position.y/2000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if position.x < -50:
		queue_free()
