extends Area2D

func _init():
	look_at(get_global_mouse_position())

func _process(delta):
	position = position * delta
