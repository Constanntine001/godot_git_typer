extends LineEdit

func _ready():
	self.grab_focus()
	pass

func _process(delta):
	
	caret_position = text.length()
	pass


func _on_RichTextLabel_command_changed(strCommand : String):
	clear()
	max_length = strCommand.length()
	pass # Replace with function body.
