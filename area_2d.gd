extends Area2D

@onready var timer = $Timer
@onready var button = $AnimatedSprite2D2

func _on_timer_timeout():
	get_tree().reload_current_scene()
	


func _on_body_entered(body):
	button.start("pressed")
