extends CharacterBody2D


func _process(delta):
	const speed = 0.01

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var H_Axis = Input.get_axis("ui_left", "ui_right")
	var V_Axis = Input.get_axis("ui_down", "ui_up")
	var offset: Vector2 = Vector2(H_Axis * delta * speed, V_Axis * delta * speed)
	if H_Axis or V_Axis:
		global_translate(global_position + offset)
