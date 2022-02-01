@tool
extends Control

# Emitted when checkbox is toggled
signal toggled(is_button_pressed)

@onready var label:= $Label

# We want to change the title to reflect the setting
@export var title := "":
	get:
		return label.text
	set(value):
		if not label:
			await self._ready()
		label.text = value


func _on_check_box_toggled(button_pressed: bool) -> void:
	emit_signal("toggled", button_pressed)
