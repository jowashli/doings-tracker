extends VBoxContainer

@export var SaveButton : Button
@export var CancelButton : Button

@export var TitleInput : LineEdit

func _ready () -> void:
	SaveButton.pressed.connect(save)
	CancelButton.pressed.connect(cancel)

func save () -> void:
	BlockManager.create_and_add_block(TitleInput.text)
	reset()
	MenuManager.set_menu(0)

func cancel () -> void:
	reset()
	MenuManager.set_menu(0)

func reset () -> void:
	TitleInput.text = ""
