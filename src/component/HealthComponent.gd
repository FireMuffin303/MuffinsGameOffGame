class_name HealthComponent
extends Node

@export var max_health : int = 10
var health : int

func _ready():
	self.health = self.max_health
	StatsGUI.health_update(get_health(),get_max_health())

func set_health(health:int) -> void:
	print(health)
	self.health = health
	StatsGUI.health_update(get_health(),get_max_health())
	
func get_health() -> int:
	return self.health
	
func set_max_health(max_health:int) -> void:
	self.max_health = max_health
	
func get_max_health() -> int:
	return self.max_health
	
func hurt(damage:int) -> void:
	self.set_health(self.get_health() - damage)
	
	
