class_name DialogGUI
extends CanvasLayer

static var value : RichTextLabel
static var a = 0
static var control : CanvasLayer

func _ready():
	value = get_node("value")
	control = self
	control.visible = false

static func _play_dialog(txt:String):
	control.visible = true
	a = 0
	States._set_state(States.states.PAUSE)
	value.text = txt
	value.visible_ratio = 0
	
func _process(delta):
	value.visible_ratio += minf(a,1)
	a += 0.08 * delta

static func _stop_dialog():
	control.visible = false	
	States._set_state(States.states.ON)

