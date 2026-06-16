extends PanelContainer

@onready var TitleLabel : Label = $MarginContainer/VBoxContainer/TitleLabel
@onready var TimeLabel : Label = $MarginContainer/VBoxContainer/TimeLabel

func set_title ( text : String ) -> void:
	TitleLabel.text = text

func set_time ( text : String ) -> void:
	TimeLabel.text = text
