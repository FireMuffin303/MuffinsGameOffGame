class_name DamageComponent
extends Area2D

@export var damage : int = 1

func _ready():
	collision_layer = 3
	collision_mask = 0
