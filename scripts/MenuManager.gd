extends Node

@onready var MenuContainer : TabContainer = $/root/Control/MenuContainer

func set_menu ( menu : int ) -> void:
	MenuContainer.current_tab = menu
