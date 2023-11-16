class_name StatsGUI
extends CanvasLayer

@onready var reputationValue:Label = get_node("Control/HBoxContainer/Value")
static var healthBar: ProgressBar

func _ready():
	healthBar = get_node("Control/ProgressBar")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	reputationValue.text = str(States._get_reputation())
	pass
	
static func health_update(health:int,max_health:int):
	healthBar.max_value = max_health
	healthBar.value = health
