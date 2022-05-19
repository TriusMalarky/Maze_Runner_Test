extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

export (PackedScene) var Bullet

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_just_pressed("shoot"):
		shoot()
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
func shoot():
	var b = Bullet.instance()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform
