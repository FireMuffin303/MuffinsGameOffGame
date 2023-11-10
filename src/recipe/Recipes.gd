extends Node

static var recipes:Array[Recipe]

func _ready():
	var basic_dragon_armor : Recipe = Recipe.new([preload("res://src/items/dragon_scale.tres")],preload("res://src/items/basic_dragon_armor.tres"))

	recipes.append(basic_dragon_armor)

static func _get_recipe():
	return recipes
