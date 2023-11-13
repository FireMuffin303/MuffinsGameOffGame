class_name HealthComponent
extends Node

@export var max_health : int = 10
var health : int

func set_health() -> void:
	self.health = health
	
func get_heath() -> int:
	return max_health
