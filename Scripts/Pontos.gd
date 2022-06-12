extends Label

var pontos = 0


func _on_RichTextLabel_add_points():
	
	pontos += 300
	
	text = "Pontos\n" + str(pontos)
	pass # Replace with function body.
