extends Panel
@onready var destination

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if destination != null:
		global_position = lerp(self.global_position, destination, 0.35)
