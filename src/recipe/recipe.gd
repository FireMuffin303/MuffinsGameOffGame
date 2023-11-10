class_name Recipe
extends Resource

@export var ingredient : Array[Item]
@export var result : Item

func _init(ingredient:Array[Item], result:Item):
	self.ingredient = ingredient
	self.result = result

func get_result() -> Item:
	return result

func get_ingredient() -> Array[Item]:
	return ingredient

