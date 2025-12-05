extends Area2D

var velocity = Vector2(-50,0)

var hit_thrust: Vector2 = Vector2(3000, 0)
var hit_torque: int = 25000


func _physics_process(_delta: float) -> void:
	var movement_offset = velocity.rotated(rotation - (PI/2))
	var next_gposition = global_position + movement_offset
	
	var space_state = get_world_2d().direct_space_state
	var raycast_query = PhysicsRayQueryParameters2D.create(global_position, next_gposition, 2)
	var raycast_result = space_state.intersect_ray(raycast_query)
	
	if raycast_result:
		hit(raycast_result)
		
	global_position = next_gposition
	
func hit(raycast_result: Dictionary) -> void:
	var body = raycast_result.collider
	
	if body.get_class() == "RigidBody2D":
		var hit_position: Vector2 = raycast_result.position
		var hit_direction: float = hit_position.angle_to_point(body.position)
		
		body.apply_force(hit_thrust.rotated(hit_direction))
		var rotation_direction: float = (hit_direction - rotation)/TAU
		body.apply_torque(hit_torque * rotation_direction)
	
	queue_free()
