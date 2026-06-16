extends Node

@onready var BlockContainer : VBoxContainer = $"/root/Control/TabContainer/Schedhule/MarginContainer/BlockContainer"
@onready var block_scene : PackedScene = load("res://scenes/Block.tscn")

func _ready () -> void:
	create_and_add_block("initial")

func create_and_add_block ( title : String ) -> Node:
	var block_instance = block_scene.instantiate()
	BlockContainer.add_child(block_instance)
	await block_instance.ready
	
	block_instance.set_title(title)
	return block_instance
