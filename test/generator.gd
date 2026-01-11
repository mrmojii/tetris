class_name Generator
extends Node

var _map : Array[int] = [0,0]

func set_map(width: int, height : int) -> bool:
	if width <= 0 or height <= 0:
		printerr("The width or height is too small")
		return false
				
	_map = [width, height]
	return true

func generate_mines(mines : int) -> Array[int]:
	if _map[0] * _map[1] <= mines:
		printerr("The map cannot fit all the mines!")
		return []
	
	var map : Array[int] = []
	map.resize(_map[0] * _map[1])
	
	for i in range(0, mines):
		map[i] = 1
	
	map.shuffle()
	return map
