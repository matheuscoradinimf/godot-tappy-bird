extends Control

const GAME_OVER_SOUND: String = "res://assets/audio/game_over.wav"
const SCORE_SOUND: String = "res://assets/audio/score.wav"

@onready var game_over_label: Label = $GameOver
@onready var press_space_label: Label = $PressSpace
@onready var score_label: Label = $MarginContainer/Score
@onready var sound: AudioStreamPlayer = $Sound

var _score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_score=0
	sound.stream = load(SCORE_SOUND)
	SignalHub.plane_died.connect(_on_plane_plane_died)
	SignalHub.point_scored.connect(_on_point_scored)


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		GameManager.load_main_scene()
	elif press_space_label.visible and event.is_action_pressed("jump"):
		ScoreManager.high_score = _score
		GameManager.load_main_scene()

func _on_plane_plane_died() -> void:
	sound.stop()
	sound.stream = load(GAME_OVER_SOUND)
	sound.play()
	game_over_label.show()
	
	await get_tree().create_timer(2.0).timeout
	game_over_label.hide()
	press_space_label.show()

func _on_point_scored() -> void:
	sound.play()
	_score += 1	
	score_label.text = "%04d" % _score
