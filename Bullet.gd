extends Node2D

var direction = Vector2(1.0,0.0)
var speed = 300.0


func _process(delta):
  position = position * direction
