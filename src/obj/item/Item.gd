class_name Item
extends Resource

@export var item_name : String
@export var item_id : String
@export var item_icon : Texture2D
@export var item_description : String

func _get_name() -> String:
	return item_name

func _get_id() -> String:
	return item_id
