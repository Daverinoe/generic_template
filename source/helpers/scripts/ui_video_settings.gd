extends Control

signal apply_button_pressed(settings)

# Store settings in a dictionary
var _settings := {resolution = Vector2(640, 480), fullscreen = false, vsync = false}


# Emit signal when button pressed
func _on_apply_button_pressed() -> void:
	# Send our dictionary
	emit_signal("apply_button_pressed", _settings)


# Store resolution change in dictionary, saved whenever a choice is made from
# the dropdown menu
func _on_resolution_selector_resolution_changed(new_resolution: Vector2) -> void:
	_settings.resolution = new_resolution


func _on_ui_fullscreen_checkbox_toggled(is_button_pressed: bool) -> void:
	_settings.fullscreen = is_button_pressed


func _on_ui_vsync_checkbox_toggled(is_button_pressed: bool) -> void:
	_settings.vsync = is_button_pressed

