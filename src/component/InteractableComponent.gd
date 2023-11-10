class_name InteractableComponent
extends Area2D

signal interact(player:Player)

func _ready():
	collision_layer = 2
	collision_mask = 2

func interacting(player:Player):
	self.interact.emit(player)
	pass
			
		
