extends Node

@onready var BlockContainer : VBoxContainer = $"/root/Control/MenuContainer/Schedhule/MarginContainer/BlockContainer"
@onready var block_scene : PackedScene = load("res://scenes/Block.tscn")

func create_and_add_block () -> Node:
	var block_instance = block_scene.instantiate()
	BlockContainer.add_child(block_instance)
	
	return block_instance
