extends Node2D

@export var generator : Generator

func _ready() -> void:
	var result = generator.set_map(5, 5)
	print(result)
	var mines = generator.generate_mines(5)
	print(mines)

func _process(_delta: float) -> void:
	pass
	#if Input.action_press("LMB")
