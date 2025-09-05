extends Node2D

@onready var laser: Area2D = $Laser

const SPEED: float = 200
const OFF_SCREEN: float = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func die() -> void:
	set_process(false)
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= SPEED * delta
	if position.x < get_viewport_rect().position.x - OFF_SCREEN:
		die()


func _on_screen_exited() -> void:
	die()
	

func _on_body_entered(body:Node2D) -> void:
	if body is Tappy:
		body.die()



func _on_laser_body_entered(body:Node2D) -> void:
	if body is Tappy:
		laser.body_entered.disconnect(_on_laser_body_entered)
		SignalHub.point_scored.emit()