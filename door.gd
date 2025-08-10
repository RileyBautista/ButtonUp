extends Area2D


# Called when the node enters the scene tree for the first time.
@onready var player = $"../Player"


func _on_body_entered(body: Node2D) -> void:
	if body == player: 
		get_tree().change_scene_to_file("res://level2.tscn")
