class_name ShootProjectileState
extends AttackState

@export var timer : Timer
@export var projectile : PackedScene

func enter_state():
	attack()
	timer.start()

func attack() -> void:
	super()
	var bullet : Projectile = projectile.instantiate()
	bullet.set_destination(self.target.global_position)
	get_parent().get_parent().add_child(bullet)
	
	
func _on_timer_out():
	attack()
