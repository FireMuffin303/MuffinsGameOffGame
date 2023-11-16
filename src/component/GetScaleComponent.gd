class_name GetScaleComponent
extends ItemComponent

signal out_of_chance()

var number
var random = RandomNumberGenerator.new()

@export var state_machine : FiniteStateMachine

var chance : int = 3

func interacting(player:Player):
	if(!state_machine.current_state is DragonIdleState) : return
	
	if(player._get_player_state() == player.PlayerStates.TASKING):
		var inputScale = GetScaleGUI._get_value()
		if(inputScale <= number+0.1 and inputScale >= number-0.1):
			super(player)
			
		else:
			chance -= 1
			print("failed")
			if(chance == 0):
				out_of_chance.emit()
				GetScaleGUI._stop()
				player._set_player_state(player.PlayerStates.IDLE)
			return
			
		GetScaleGUI._stop()
		player._set_player_state(player.PlayerStates.IDLE)
		return
	
	if(player._get_player_state() == player.PlayerStates.IDLE):
		player._set_player_state(player.PlayerStates.TASKING)
		number = random.randf()
		GetScaleGUI._start()
		print(number)
