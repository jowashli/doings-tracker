extends VBoxContainer

@export var SaveButton : Button
@export var CancelButton : Button

func _ready () -> void:
	SaveButton.pressed.connect(save)
	CancelButton.pressed.connect(cancel)

func save () -> void:
	BlockManager.create_and_add_block("new")
	MenuManager.set_menu(0)

func cancel () -> void:
	MenuManager.set_menu(0)
