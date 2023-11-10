extends Node

var state : states = states.ON

var reputation : int = 0


var day : int = 0
var time : int = 0


enum states{
	ON,
	PAUSE
}

func _set_state(state:states):
	self.state = state
	
func _get_state() -> states:
	return self.state
	
func _set_reputation(amount:int):
	self.reputation = amount
	
func _increase_reputation(amount:int):
	self._set_reputation(self._get_reputation()+amount)
	
func _decrease_reputation(amount:int):
	self._set_reputation(self._get_reputation()-amount)
	
func _get_reputation() -> int:
	return reputation
	
func _set_day(day:int):
	self.day = day

func _set_time(time:int):
	self.time =time
