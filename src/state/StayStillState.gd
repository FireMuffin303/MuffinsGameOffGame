class_name DragonIdleState
extends State

func exit_state() -> void:
	super()

func _on_out_of_chance():
	on_change_state.emit(next_state)
	pass # Replace with function body.
