class_name LookAroundState
extends State

@export var timer : Timer
@export var raycast : RayCast2D
var target : Player
var right_side : bool = false

signal player_alert(player:Player)

func enter_state():
	timer.start(2)

func physics_update(delta:float) -> void:
	if(raycast.get_collider() is Player):
		self.target = raycast.get_collider()
		self.player_alert.emit(self.target)
		

func change_side() -> void:
	right_side = !right_side

func alert_player(player:Player):
	print("alert there's a player")
