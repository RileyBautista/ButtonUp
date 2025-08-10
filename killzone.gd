extends Area2D

@onready var timer = $Timer
@onready var player = $"../Player"
@onready var playerSprite = $"../Player/AnimatedSprite2D"
@onready var deathLogger = $"../Log"
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_body_entered(body: Node2D) -> void:
	if body == player:
		timer.start()
		playerSprite.play("death")
		deathLogger.deaths = 1
		player.stop = true
		
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
