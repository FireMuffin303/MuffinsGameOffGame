class_name StateMachine
extends Node

var current_state : State
var states : Array[State]

func _ready():
	for state in self.get_children():
		if(state != State):
			return
		self.states.append(state)
