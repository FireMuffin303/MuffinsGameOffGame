class_name FiniteStateMachine
extends Node

@export var initial_state : State
var current_state : State
var states : Array[State]

func _ready():
	for state in self.get_children():
		if(state == State):
			self.states.append(state)
		
	if(initial_state != null):
		current_state = initial_state

func _process(delta):
	if(current_state == null):return
	
	self.current_state.update(delta)
	
func _physics_process(delta):
	if(current_state == null):return
	
	self.current_state.physics_update(delta)

func on_change_state(new_state:State) -> void:
	if(new_state == null): return
	
	current_state.exit_state()
	current_state = new_state
	current_state.enter_state()
