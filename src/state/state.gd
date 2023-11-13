class_name State
extends Node

signal on_change_state(state:State)

@export var next_state:State

func enter_state() -> void:
	pass
	
func exit_state() -> void:
	pass

func update(delta:float) -> void:
	pass
	
func physics_update(delta:float) -> void:
	pass
