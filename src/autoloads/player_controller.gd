extends Node
# Player controller singleton.


var player1 = null


func _physics_process(_delta):
	if player1:
		player1.movement.x = Input.get_action_strength("p1_move_right") - Input.get_action_strength("p1_move_left")
		if Input.is_action_pressed("shoot"):
			player1.shoot()
