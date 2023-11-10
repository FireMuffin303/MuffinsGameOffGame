class_name ItemComponent
extends InteractableComponent

@export var item : Item
@export var one_time : bool = false
var taken : bool = false

func interacting(player:Player):
	if(taken == true): return
	
	_give_item(player)
	
	if(one_time == true):
		taken = true
	
	super(player)
	
	pass

func _give_item(player:Player):
	var inventory : InventoryComponent = player._get_inventory()
	inventory._insert_item(item)
