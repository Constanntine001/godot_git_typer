extends Timer

func _on_RichTextLabel_command_changed(obj):
	if is_stopped():
		start()
	else:
		stop()
		start(wait_time)
	pass # Replace with function body.
