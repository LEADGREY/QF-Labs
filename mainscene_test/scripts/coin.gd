extends Area2D

@onready var game_manager: Node = %"Game manager"

func _on_body_entered(_body):
	#game_manager.add_point()
	queue_free()
