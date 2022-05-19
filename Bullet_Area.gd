extends KinematicBody2D

var velocity = Vector2()
export (int) var speed = 200

func _init():
	look_at(get_global_mouse_position())

func _process(delta):
	velocity = move_and_slide(velocity)
