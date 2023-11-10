class_name InventoryComponent
extends Node

signal update_inventory(inventory:Array[ItemStack])

var inventory:Array[ItemStack] = [null,null,null,null,null,null,null,null,null]

func _ready():
	pass

func _set_item(index:int,item:Item):
	inventory[index] = ItemStack.new(item.duplicate()) 
	self.update_inventory.emit(self.inventory)
	print(inventory)
	pass

func _get_item(index:int) -> ItemStack:
	return inventory[index]

func _insert_item(item:Item):
	for i in range(inventory.size()):
		if(inventory[i] is ItemStack):
			var itemStack : ItemStack = inventory[i]
			if(item.item_id == itemStack._get_item().item_id):
				itemStack._add_amount(1)
				break
				
		if(inventory[i] == null):
			self._set_item(i,item)
			break
	return

func _get_inventory() -> Array[ItemStack]:
	return inventory
