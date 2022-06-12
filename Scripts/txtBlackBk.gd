extends Panel

func _on_RichTextLabel_command_changed(obj : RichTextLabel):
	
	rect_min_size.x = 19 * obj.command.length()
	pass # Replace with function body.
