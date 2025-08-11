extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Log.gameStarted == false:
		Log.gameStarted = true
		Log.currentLevel = 1
	else: 
		play(Log.audioTimestamp)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
