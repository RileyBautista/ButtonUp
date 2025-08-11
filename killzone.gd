extends Area2D

@onready var timer = $Timer
@onready var player = $"../Player"
@onready var playerSprite = $"../Player/AnimatedSprite2D"
@onready var bgMusic = $"../Player/bgMusic"
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
	Log.audioTimestamp = bgMusic.get_playback_position()
	get_tree().reload_current_scene()
	
