extends Node
#Everything
var shape_name: String = "unnamed"
var shape_color: String = "unnamed"
var rigidBodyHolder
var newShape = preload("res://Scenes/3D Shapes/blankObject.tscn")

var onFloorClick: = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func floor_clicked():
	for n in onFloorClick:
		if n.has_method("floor_clicked"):
			n.floor_clicked()

func any_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			floor_clicked()
