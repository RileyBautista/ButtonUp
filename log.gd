extends Node2D

@export var deaths = 0
@export var orbsCollected = 0 
@onready var audioThingy = $AudioStreamPlayer2D
@export var gameStarted = false
@export var currentLevel = 0
@export var audioTimestamp = 0.0


func musicPlay():
	audioThingy.playing = true
