extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Nice you got " + str(Log.orbsCollected) + "/7 Orbs" + "\n" + "\n" + "You Died: " + str(Log.deaths) + " Times"
