extends Node2D

@onready var tile_map_layer: TileMapLayer = $TileMapLayer

func _process(_delta: float) -> void:
	# latinas latinas
	print("sonic, i just love latinas!!!!")
	
	var mouse_pos = get_global_mouse_position()
	var tile_pos = tile_map_layer.local_to_map(mouse_pos)
	
	var tile = tile_map_layer.get_cell_tile_data(tile_pos)
	print(tile_map_layer.get_cell_atlas_coords(tile_pos))
	print(tile_map_layer.get_surrounding_cells(tile_pos))
	print(tile_pos)
	if tile:
		print(tile.terrain)
