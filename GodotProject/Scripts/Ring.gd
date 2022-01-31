extends StaticBody
signal updated_array






func _on_Score_update_array(shape_name_Array, shape_color_Array):
	emit_signal("updated_array", shape_name_Array, shape_color_Array)

