extends CharacterBody2D

@onready var animatedSprite : AnimatedSprite2D = get_node("AnimatedSprite2D")

func _ready():
	animatedSprite.play("sleep")

func _on_get_scale_component_out_of_chance():
	animatedSprite.play("wakeup")
	pass # Replace with function body.
