extends Area2D

@onready var timer = $Timer
@onready var player = $"../Player"
@onready var playerSprite = $"../Player/AnimatedSprite2D"
@onready var L1Music = $"../Player/bgMusic"
@onready var L2Music = $"../Player/bgMusic"
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_body_entered(body: Node2D) -> void:
	if body == player:
		timer.start()
		playerSprite.play("death")
		Log.deaths += 1
		Log.orbsCollected = 0
		player.stop = true
		
func _on_timer_timeout() -> void:
	if Log.currentLevel == 1:
		Log.audioTimestamp = L1Music.get_playback_position()
	elif Log.currentLevel == 2:
		Log.audioTimestamp = L2Music.get_playback_position()
	get_tree().reload_current_scene()
	
