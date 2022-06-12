extends RichTextLabel

signal command_changed(obj)
signal add_points()
signal remove_health()

var command = ""

func _ready():
	ChangeCommand("commando")
	pass # Replace with function body.

# Se o jogador acertou a palavra na tela
func TypeSuccess():
	
	emit_signal("add_points")
	
	ChangeCommand("success")
	pass
	
# Se o jogador errou a palavra na tela
func _on_Timer_timeout():
	
	emit_signal("remove_health")
	
	ChangeCommand("timeout")
	pass # Replace with function body.	

func ChangeCommand(inputCommand):
	
	#Choose random command here
	
	var commandList = [
		"git pull",
		"git push",
		"git help",
		"git commit -m suaMensagem",
		"git --version",
		"git add *",
	]
	
	#Choose random command here
	
	command = commandList[int(rand_range(0, commandList.size()))]

	bbcode_text = "[center][color=white]" + command + "[/color][/center]"
	emit_signal('command_changed', self)	

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
	
	if new_text == command:
		TypeSuccess()	
	pass # Replace with function body.
	






