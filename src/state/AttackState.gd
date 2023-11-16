class_name AttackState
extends State

var target : Player 
@export var raycast : RayCast2D

func attack() -> void:
	pass

func physics_update(delta:float) -> void:
	if(target == null) : return
	
	raycast.look_at(target.position)

func set_target(target:Player):
	self.target = target
