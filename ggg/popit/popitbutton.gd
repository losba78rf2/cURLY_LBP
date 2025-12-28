extends Button
class_name PopitButton
@export var PopitPage : int
var canmove = false
var destination
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.connect("pressed", changePP)
	
func changePP():
	$"../..".ChangeTo = self.PopitPage
func _process(_delta: float) -> void:
	if self.is_hovered():
		$"../../Highlight/HighLight".destination = self.global_position
		$"../../Highlight/PanelContainer".show()
		$"../../Highlight/PanelContainer/HighlightName".text = self.name
		if self.is_in_group("SmallerButton"):
			$"../../Highlight/HighLight".size = lerp($"../../Highlight/HighLight".size, Vector2(40, 40), 0.25)
		if self.is_in_group("MainButton"):
			$"../../Highlight/HighLight".size = lerp($"../../Highlight/HighLight".size, Vector2(54, 54), 0.25)
