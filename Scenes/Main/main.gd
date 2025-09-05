extends Control

@onready var highscore_label: Label = $MarginContainer/Value

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump")==true and event.is_echo()==false:
		GameManager.load_game_scene()


func _ready() -> void:
	get_tree().paused = false
	highscore_label.text = "%04d" % ScoreManager.high_score
