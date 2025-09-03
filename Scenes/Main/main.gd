extends Control

const GAME = preload("res://Scripts/Game/game.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump")==true and event.is_echo()==false:
		get_tree().change_scene_to_packed(GAME)
