extends Area2D


@onready var player = $Player
@onready var animated_sprite = $Player/AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if(body == player):
		animated_sprite.start("coinPickup")
		animated_sprite.offset.x = 5
		
