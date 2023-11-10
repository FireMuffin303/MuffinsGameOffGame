class_name GetScaleGUI
extends CanvasLayer

static var scroll : VScrollBar
static var this:CanvasLayer

func _ready():
	this = self
	this.visible = false
	scroll = get_node("VScrollBar")
	
static func _start():
	scroll.value = 0
	this.visible = true
	
func _physics_process(delta):
	var key = Input.get_action_raw_strength("move_down") - Input.get_action_raw_strength("move_up")
	scroll.value += minf(key*0.060,1)
	
static func _stop():
	this.visible = false

static func _get_value() -> float:
	return scroll.value
