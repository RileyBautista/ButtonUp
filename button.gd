extends Area2D
@onready var button = $AnimatedSprite2D2
@onready var player = $"../Player"
@onready var label = $"../beginningText2"

func _on_body_entered(body: Node2D) -> void:
	if (body == player):
		button.play("pressed")
		player.SPEED = 500.0
		label.visible = true


func _on_body_exited(body: Node2D) -> void:
	if body == player:
		button.play("default")
