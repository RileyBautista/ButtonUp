extends Area2D
@onready var button = $AnimatedSprite2D2
@onready var player = $"../Player"
@onready var infoText = $"../infoText"
# Called when the node enters the scene tree for the first time.

func _on_body_entered(body: Node2D) -> void:
	if (body == player):
		button.play("pressed")
		player.JUMP_VELOCITY = -800
		infoText.visible = true
		


func _on_body_exited(body: Node2D) -> void:
	if (body == player):
		button.play("default")
		infoText.visible = false
