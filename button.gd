extends Area2D
enum gravityType {
	Normal,
	Inverse
}

@onready var button = $AnimatedSprite2D2
@onready var player = $"../Player"
@onready var label = $"../beginningText2"
@onready var powerupSound = $"../Player/powerUp"
@export var labelButton: RichTextLabel
@export var gravityChange = gravityType.Normal
@export var jumpBoost = -300.0
@export var speedBoost = 130.0 

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		if gravityChange == gravityType.Inverse:
			player.inverseGravity = true
		else:
			player.inverseGravity = false
		if jumpBoost != -300:
			player.JUMP_VELOCITY = jumpBoost
		if speedBoost != 130.0:
			player.SPEED = speedBoost
		powerupSound.playing = true
		button.play("pressed")
		if labelButton != null:
			labelButton.visible = true
func _on_body_exited(body: Node2D) -> void:
	if body == player:
		button.play("default")
