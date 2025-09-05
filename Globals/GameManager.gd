extends Node

const MAIN = preload("res://Scenes/Main/main.tscn")
const GAME = preload("res://Scenes/Game/game.tscn")
const COMPLEX_TRANSITION = preload("res://Scenes/ComplexTransition/complex_transition.tscn")

var next_scene: PackedScene

func add_complex_transition() -> void:
	var complex_transition = COMPLEX_TRANSITION.instantiate()
	add_child(complex_transition)

func load_game_scene() -> void:
	next_scene = GAME
	add_complex_transition()

func load_main_scene() -> void:
	next_scene = MAIN
	add_complex_transition()