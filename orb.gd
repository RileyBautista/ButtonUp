extends Area2D

@onready var player = $"../Player"
@onready var orbSound = $"../Player/orbPick"
@onready var orbSprite = $AnimatedSprite2D
@onready var timer = $Timer
	

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		Log.orbsCollected += 1 
		orbSprite.play("collected")
		set_deferred("monitoring", false)
		timer.start()
		orbSound.playing = true
		print(Log.orbsCollected)

func _on_timer_timeout() -> void:
	visible = false
