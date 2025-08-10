extends Area2D

@onready var button = $AnimatedSprite2D2
@onready var player = $"../Player"

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		button.play("pressed")
		player.inverseGravity = true


func _on_body_exited(body: Node2D) -> void:
	if body == player:
		button.play("default")
