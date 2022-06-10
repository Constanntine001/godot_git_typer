extends RichTextLabel

signal command_changed(strCommand)


var command = "command"

func _ready():
	bbcode_text = "[center][color=white]" + command + "[/color][/center]"
	
	
	emit_signal('command_changed', command)
	
	pass # Replace with function body.

func _on_LineEdit_text_changed(new_text : String):
	
	var normal = ""
	var correct = ""
	var wrong = ""
	
	for i in range(command.length()):
		if range(new_text.length()).has(i):
			if new_text[i] == command[i]:
				correct += command[i]
			else:
				for j in range(i, command.length()):
					wrong += command[j]
				break
				pass
		else:
			normal += command[i]
		
		
	normal = "[color=white]" + normal + "[/color]"
	correct = "[color=yellow]" + correct + "[/color]"
	wrong = "[color=red]" + wrong + "[/color]"

	bbcode_text = "[center]" + correct + wrong + normal + "[/center]"
			
	pass # Replace with function body.
