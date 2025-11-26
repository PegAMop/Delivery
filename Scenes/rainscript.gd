extends RigidBody2D

var raindrop = preload("res://rain.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(RandomNumberGenerator.new().randf_range(0,get_window().size.x), 0)
	gravity_scale = 10

# Called every frame. 'delta' is 	the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y > get_window().size.y:	
		queue_free()
		

func _spawn() -> void:
	await get_tree().create_timer(1.0).timeout
