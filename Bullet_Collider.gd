extends KinematicBody2D

var velocity = Vector2(0, 0)
export (int) var speed = 1000

func set_velocity(rot, speed):
	self.velocity = Vector2(cos(rot) * speed, sin(rot) * speed)

func _process(delta):
	var collide = move_and_collide(velocity)
