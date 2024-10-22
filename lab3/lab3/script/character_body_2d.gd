extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta) :
	if  Input.is_action_just_pressed("ui_up"):
		velocity.y-=SPEED
	elif  Input.is_action_just_pressed("ui_down"):
		velocity.y+=SPEED
	elif  Input.is_action_just_pressed("ui_left"):
		velocity.x-=SPEED
	elif  Input.is_action_just_pressed("ui_right"):
		velocity.x+=SPEED
	else:
		velocity = Vector2(0,0)
	move_and_slide()
