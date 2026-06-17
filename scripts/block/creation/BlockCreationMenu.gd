extends VBoxContainer

@export var SaveButton : Button
@export var CancelButton : Button

@export var TitleInput : LineEdit
@export var ColourInput : OptionButton

func _ready () -> void:
	SaveButton.pressed.connect(save)
	CancelButton.pressed.connect(cancel)

func save () -> void:
	var new_block : Node = BlockManager.create_and_add_block()
	new_block.set_title(TitleInput.text)
	new_block.set_colour(ColourInput.get_selected_colour())
	reset()
	MenuManager.set_menu(0)

func cancel () -> void:
	reset()
	MenuManager.set_menu(0)

func reset () -> void:
	TitleInput.text = ""
	ColourInput.selected = 0
