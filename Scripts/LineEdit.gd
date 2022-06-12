extends LineEdit



func _ready():
	self.grab_focus()
	pass

func _process(delta):
	caret_position = text.length()
	pass

func _on_RichTextLabel_command_changed(obj : RichTextLabel):
	max_length = obj.command.length()
	clear()
	pass # Replace with function body.
