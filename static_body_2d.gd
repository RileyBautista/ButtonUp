extends StaticBody2D

@onready var blocker = $CollisionShape2D
@onready var infoText = $"../infoTextL3"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Log.currentLevel = 3
	Log.orbsCollected = 0
	infoText.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Log.currentLevel == 3 and Log.orbsCollected == 4:
		blocker.disabled = true
		infoText.visible = false
