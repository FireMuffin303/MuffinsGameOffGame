class_name Player
extends CharacterBody2D

@onready var animatedSprite : AnimatedSprite2D = get_node("AnimatedSprite2D")
@onready var inventory : InventoryComponent = get_node("InventoryComponent")
@onready var raycast: RayCast2D = get_node("RayCast2D")
@onready var invGUI: CanvasLayer = get_node("InventoryScreen")

var speed = 8000

enum PlayerStates{
	IDLE,
	TASKING,
	INVENTORY
}

var playerState : PlayerStates = PlayerStates.IDLE


func _physics_process(delta):
	self.interaction()
	
	if(States.state != States.states.ON or playerState != PlayerStates.IDLE):
		return
	
	var up = int(Input.get_action_raw_strength("move_up"))
	var down = int(Input.get_action_raw_strength("move_down"))
	var left = int(Input.get_action_raw_strength("move_left"))
	var right = int(Input.get_action_raw_strength("move_right"))
	
	
	var mv = down - up
	var mh = right - left
	
	var vector:Vector2 = Vector2(mh,mv)
	var velo : Vector2 = (vector*speed)*delta

	if(Input.get_action_raw_strength("move_sprint")):
		velo = velo * 2
		animatedSprite.speed_scale = 2
		
	if(Input.is_action_just_released("move_sprint")):
		animatedSprite.speed_scale = 1

	velocity = velo
	
	if(velocity != Vector2(0,0)):
		animatedSprite.play("walk")
		
	else:
		animatedSprite.play("idle")
		
	if(velocity != Vector2.ZERO):
		if(velocity.x > 0):
			animatedSprite.flip_h = true
		else:
			animatedSprite.flip_h = false
	
	#_get_facing(vector)
	if(vector != Vector2(0,0) and vector.x != vector.y):
		raycast.target_position = vector*32
		
	raycast.force_raycast_update()


#	if(!raycast.is_colliding()):
#		position += vector*16
		
	move_and_slide()
	
func interaction():
	if(raycast.get_collider() is InteractableComponent):
		var interactable : InteractableComponent = raycast.get_collider()
		if(Input.is_action_just_pressed("interaction")):
			interactable.interacting(self)
			


func _get_inventory():
	return self.inventory
	
func _get_player_state():
	return self.playerState
	
func _set_player_state(state:PlayerStates):
	self.playerState = state

