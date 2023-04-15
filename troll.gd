extends KinematicBody2D

# Define the size of the grid and the size of each cell
const GRID_SIZE = Vector2(10, 10)
const CELL_SIZE = Vector2(32, 32)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var click_pos = get_global_mouse_position()
			var cell_x = int(click_pos.x / CELL_SIZE.x)
			var cell_y = int(click_pos.y / CELL_SIZE.y)
			var world_pos = Vector2(cell_x, cell_y) * CELL_SIZE
			position = world_pos + CELL_SIZE / 2.0
