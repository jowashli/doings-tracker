extends PanelContainer

@onready var TitleLabel : Label = $MarginContainer/VBoxContainer/TitleLabel
@onready var TimeLabel : Label = $MarginContainer/VBoxContainer/TimeLabel

func set_title ( text : String ) -> void:
	TitleLabel.text = text

func set_time ( text : String ) -> void:
	TimeLabel.text = text

func set_colour ( colour : Color ) -> void:
	var cbox : StyleBoxFlat = get_theme_stylebox("panel").duplicate()
	cbox.bg_color = colour
	add_theme_stylebox_override("panel", cbox)
