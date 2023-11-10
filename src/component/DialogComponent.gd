class_name DialogComponent
extends InteractableComponent

@export var dialogs : Array[String]
var index = 0

func interacting(player:Player):
	if(index >= dialogs.size()):
		DialogGUI._stop_dialog()
		index = 0
		return
	DialogGUI._play_dialog(dialogs[index])
	index += 1
	super(player)
	pass
			
