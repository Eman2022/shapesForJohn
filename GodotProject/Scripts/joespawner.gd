class_name Joe
extends Spatial



var rigidBodyHolder

var Joescube = preload("res://Scenes/3D Shapes/JoesCube.tscn")
var power = 50

func _ready():
	rigidBodyHolder = get_parent().get_child(0)


func _input(event):
	if Input.is_action_pressed("addObb2"):
		power += 25
		if power > 800:
			power = 800
	
	if Input.is_action_just_released("addObb2"):
		print ('hello')
		var newCube = Joescube.instance()
		newCube.translation = self.translation
		rigidBodyHolder.add_child(newCube)
		
		newCube.add_central_force(Vector3(power,5,0))
		power = 50

