extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Log.currentLevel == 2:
		play(Log.audioTimestamp)
	if Log.currentLevel == 1:
		Log.currentLevel = 2
	


func _on_finished() -> void:
	play()
