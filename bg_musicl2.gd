extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Log.currentLevel == 2:
		play(Log.audioTimestamp)
	if Log.currentLevel == 1:
		Log.currentLevel = 2
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
