extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#TODO Base mouse distance off of "tiles away" instead of "pixels away"
#TODO Remove colors from tiles in intervals
#TODO Have a hold length for placing colors
#TODO Implement color tank
func _process(delta: float) -> void:
	var player = get_parent().get_node("Player")
	var mouse_coords_global: Vector2 = get_global_mouse_position()
	var mouse_coords_map: Vector2 = local_to_map(get_local_mouse_position())
	var mouse_distance: float = player.global_position.distance_to(mouse_coords_global)
	print(mouse_distance)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and mouse_distance <= 95:
		set_cell(1, mouse_coords_map, 2, Vector2i(0,1))
