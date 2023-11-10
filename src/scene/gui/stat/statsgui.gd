class_name StatsGUI
extends CanvasLayer

@onready var reputationValue:Label = get_node("HBoxContainer/Value")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	reputationValue.text = str(States._get_reputation())
	pass
