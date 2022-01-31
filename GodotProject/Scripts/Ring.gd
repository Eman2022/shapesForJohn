extends StaticBody
signal updated_array



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Ring_input_event(camera, event, click_position, click_normal, shape_idx):
	Global.any_input_event(camera, event, click_position, click_normal, shape_idx)


func _on_Score_update_array(shape_name_Array, shape_color_Array):
	emit_signal("updated_array", shape_name_Array, shape_color_Array)
	pass # Replace with function body.
