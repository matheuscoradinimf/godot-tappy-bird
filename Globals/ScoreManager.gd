extends Node

const SCORES_PATH: String = "user://tappy.tres"

var _high_score: int = 0
var high_score: int:
    get:
        return _high_score
    set(value):
        if value > _high_score:
            _high_score = value
            save_high_scores()


func _ready() -> void:
    load_high_scores()

func save_high_scores() -> void:
    var hsr: HighScoreResource = HighScoreResource.new()
    hsr.high_score = _high_score
    ResourceSaver.save(hsr, SCORES_PATH)

func load_high_scores() -> void:
    if ResourceLoader.exists(SCORES_PATH):
        var hsr: HighScoreResource = load(SCORES_PATH)
        if hsr:
            _high_score = hsr.high_score