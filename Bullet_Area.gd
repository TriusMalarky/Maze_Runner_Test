extends KinematicBody2D

var velocity = Vector2(1, 1)
export (int) var speed = 200

func _process(delta):
	var collide = move_and_collide(velocity)
