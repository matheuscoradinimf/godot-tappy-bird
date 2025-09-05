extends Node2D

const PIPES = preload("res://Scenes/Pipes/pipes.tscn")

@onready var pipes_holder: Node = $PipesHolder
@onready var lower_marker: Marker2D = $LowerPoint
@onready var upper_marker: Marker2D = $UpperPoint

func spawn_pipes() -> void:
	var pipes = PIPES.instantiate()
	var x_position = upper_marker.position.x
	var y_position = randf_range(lower_marker.position.y, upper_marker.position.y) 
	pipes.position = Vector2(x_position, y_position)
	pipes_holder.add_child(pipes)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_pipes()

func _enter_tree() -> void:
	SignalHub.plane_died.connect(_on_plane_plane_died)

func _on_spawn_timer_timeout() -> void:
	spawn_pipes()


func _on_plane_plane_died() -> void:
	get_tree().paused = true
