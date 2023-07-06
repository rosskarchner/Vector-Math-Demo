extends Node2D

var velocity = Vector2(50,0)

var myTarget = null

func _physics_process(delta):
	if is_instance_valid(myTarget):
		var target_pos = myTarget.position
		var vecA = position - target_pos
		# same as position.direction_to(target_pos)
		var direction = (target_pos - position).normalized()
		# same as position.distance_to(target_pos)
		var distance = sqrt(pow(vecA.x, 2.0)+ pow(vecA.y, 2.0))
		var force_vector = ((direction) / (distance)) * 300
		velocity  += force_vector
		position += velocity * delta
	
