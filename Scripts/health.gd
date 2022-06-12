extends TextureProgress



func _on_RichTextLabel_remove_health():
	value -= 1
	
	if value <= 0:
		# Change this to go to menu screen or whatever
		get_tree().quit()
	pass # Replace with function body.
