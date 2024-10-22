extends Sprite2D
@export var health = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("hello")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if health<=0:
		hide()
	elif health<=3:
		modulate=Color.RED
	else:
		show()
		modulate=Color.WHITE
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		health-=1
		print(health)
