extends Area2D

const SPEED = 100

func _process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 2
	if Input.is_action_pressed("ui_left"):
		direction.x -= 2
	if Input.is_action_pressed("ui_down"):
		direction.y += 2
	if Input.is_action_pressed("ui_up"):
		direction.y -= 2

	position += direction.normalized() * SPEED * delta

	if direction != Vector2.ZERO:
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = direction.x < 0
	else:
		$AnimatedSprite2D.play("idle")
