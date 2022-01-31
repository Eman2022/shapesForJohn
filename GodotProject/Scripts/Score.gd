extends Area
var i = 0
var surfaceMatArray = []
var shape_name_Array = []
var shape_color_Array = []
signal update_array
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func insert_color_shape(body):
	shape_name_Array.insert(0, body.shape_name)
	shape_color_Array.insert(0, body.shape_color)
	emit_signal("update_array", shape_name_Array, shape_color_Array)
	pass
	
func erase_color_shape(body):
	shape_name_Array.erase(body.shape_name)
	shape_color_Array.erase(body.shape_color)
	emit_signal("update_array", shape_name_Array, shape_color_Array)
	pass
	
func _on_Score_body_entered(body):
	insert_color_shape(body)
	pass # Replace with function body.


func _on_Score_body_exited(body):
	erase_color_shape(body)
	pass # Replace with function body.
