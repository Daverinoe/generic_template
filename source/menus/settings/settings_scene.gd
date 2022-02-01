extends Node2D

# We use a dictionary to represent settings because we have few values for now. Also, when you
# have many more settings, you can replace it with an object without having to refactor the code
# too much, as in GDScript, you can access a dictionary's keys like you would access an object's
# member variables.

func update_settings(settings: Dictionary) -> void:
	if settings.fullscreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
#	get_tree().set_screen_stretch(
#		SceneTree.STRETCH_MODE_2D, SceneTree.STRETCH_ASPECT_KEEP,
#		settings.resolution)
	
	DisplayServer.window_set_size(settings.resolution)
	if settings.vsync:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

func _on_video_settings_apply_button_pressed(settings: Dictionary) -> void:
	update_settings(settings)
