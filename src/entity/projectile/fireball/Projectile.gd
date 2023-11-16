class_name Projectile
extends CharacterBody2D

var destination : Vector2
@export var timer : Timer
@export var speed : int = 1

func _ready():
	timer.start()

func set_destination(vector:Vector2) -> void:
	self.destination = vector
	


func _physics_process(delta):
	if(global_position == destination):
		self.queue_free()
	
	if(self.destination == null) : return
	
	var angle = get_angle_to(destination)
	
	var velo : Vector2 = (global_position - destination)* -1
	
	velocity = velo *speed*5*delta
	move_and_slide()
	pass



func _on_lifetime_timeout():
	self.queue_free()
	pass # Replace with function body.
