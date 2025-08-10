extends Area2D
@onready var player = $"../Player"

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		player.SPEED = 130
		player.JUMP_VELOCITY = -300
