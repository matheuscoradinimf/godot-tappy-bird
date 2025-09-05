extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_packed(GameManager.next_scene)