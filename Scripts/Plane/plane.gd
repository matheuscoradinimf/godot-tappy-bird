extends CharacterBody2D

var _gravity: float = ProjectSettings.get("physics/2d/default_gravity")

const JUMP_FORCE: float = 300

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func die() -> void:
	animated_sprite.stop()
	set_physics_process(false)
	
func fly(delta: float) -> void:
	velocity.y += _gravity * delta
	if Input.is_action_just_pressed("jump"):
		velocity.y = -JUMP_FORCE
		animation_player.play("jump")
	
	

func _physics_process(delta: float) -> void:
	fly(delta)
	move_and_slide()
	if is_on_floor():
		die()
		
