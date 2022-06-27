extends Node2D

var direction = Vector2(0.0,0.0)
var speed = 300.0

func set_velocity(velocity, speed):
	var collider = $collider
	collider.set_velocity(velocity, speed)
