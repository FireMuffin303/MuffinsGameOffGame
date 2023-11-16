class_name HurtBox
extends Area2D

@export var healthComponent : HealthComponent

# Called when the node enters the scene tree for the first time.
func _ready():
	collision_layer = 0
	collision_mask = 3
	pass # Replace with function body.



func _on_area_entered(area:DamageComponent):
	healthComponent.hurt(area.damage)
	pass # Replace with function body.
