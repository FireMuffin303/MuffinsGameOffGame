class_name ItemStack
extends Sprite2D

var item:Item
var amount:int = 1

func _init(item:Item):
	self.item = item
	self.texture = item.item_icon
	
func _set_amount(amout:int):
	self.amount = amount

func _add_amount(amount:int):
	self.amount += amount

func _get_amount():
	return self.amount

func _get_item():
	return self.item
