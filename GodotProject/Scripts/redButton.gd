extends Button

var newMat = preload("res://Materials/Material.tres")

func _on_redButton_pressed():
	newMat.albedo_color = Color(1.0, 0, 0, 1.0)
	pass
