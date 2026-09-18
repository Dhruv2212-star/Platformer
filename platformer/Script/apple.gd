extends Area2D

@onready var game_manager = get_node("/root/Game/GameManager")
@onready var apple_sound = get_node("/root/Game/AppleSound")

func _on_body_entered(body):
	game_manager.add_point()
	apple_sound.play()
	queue_free()
