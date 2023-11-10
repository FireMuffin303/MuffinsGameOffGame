class_name LookAroundState
extends State

@export var raycast : RayCast2D
var target : Player

	
func physics_update(delta) -> void:
	if(raycast.get_collider() is Player):
		self.target = raycast.get_collider()
	
