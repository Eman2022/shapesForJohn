class_name Erich
extends Spatial

export var playerNumber := 1

var rigidBodyHolder

var erichsCube = preload("res://Scenes/3D Shapes/Erichscube.tscn")


func _ready():
	rigidBodyHolder = get_parent().get_child(0)


func _input(event):
	if Input.is_action_just_released("AddObb1"):
		var newCube = erichsCube.instance()
		newCube.translation = self.translation
		rigidBodyHolder.add_child(newCube)
		newCube.rotate_y(int(rand_range(0,3)) * 90)
		newCube.add_central_force(Vector3(0,-500,-800))
