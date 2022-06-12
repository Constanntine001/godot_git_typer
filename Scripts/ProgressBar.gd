extends ProgressBar

func _process(delta):
	value = ($Timer.time_left/$Timer.wait_time) * max_value
	

func _on_RichTextLabel_command_changed(obj : RichTextLabel):
	rect_min_size.x = 19 * obj.command.length()
	value = max_value
	pass # Replace with function body.
