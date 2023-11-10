class_name NPC
extends StaticBody2D

@export var txt:String = "Hello World"
@export var item:Item

@export var give_reputation : bool = false

func _on_interact(player):
	pass # Replace with function body.

func _give_item(player:Player):
	if(item == null): return
	
	var inventory : InventoryComponent = player._get_inventory()
	inventory._insert_item(item)
	

	
	
	
