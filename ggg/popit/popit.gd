extends PanelContainer
@export var ChangeTo: int = 0:
	set(newcurrent):
		ChangeTo = newcurrent
		change_popit_page(ChangeTo)
enum PopitPages {
	MAIN, # SCALE X 198.0 Y 198.0 | POS X 477 Y 225
	CUSTOMIZATION,
	SWAGBAG,
	GLOBALSETTINGS,
	FAVORITED,
	CURSOR,
	STICKERS,
	CHAT,
	
}
var current_state: PopitPages = PopitPages.MAIN
const MAINSIZE = Vector2(198, 198)
const MAINPOS = Vector2(477, 225)

const BIGSIZE = Vector2(294, 580)
const BIGPOS = Vector2(802, 34)

var target_size
var target_position
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if target_size != null:
		self.global_position = lerp(self.global_position, target_position, 0.25)
		self.size = lerp(self.size, target_size, 0.25)
func change_popit_page(new):
	match new:
		0:
			current_state = PopitPages.MAIN
		1:
			current_state = PopitPages.CUSTOMIZATION
		2:
			current_state = PopitPages.SWAGBAG
	

	
	if current_state == PopitPages.MAIN:
		$MainPage.show()
		$Container.hide()
		$HardcodeBackButton.hide()
		target_size = MAINSIZE
		target_position = MAINPOS
	else:
		$MainPage.hide()
		$Container.show()
		$HardcodeBackButton.show()
		target_size = BIGSIZE
		target_position = BIGPOS
	
	# Создаем твин для плавной анимации
	
