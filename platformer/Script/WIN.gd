extends Area2D

@onready var level_complete_label = get_node("/root/Game/LevelCompleteLabel")

func _physics_process(_delta):
	var bodies = get_overlapping_bodies()

	for body in bodies:
		if body.name == "Player":
			print("PLAYER DETECTED!")
			level_complete_label.visible = true
			get_tree().paused = true
