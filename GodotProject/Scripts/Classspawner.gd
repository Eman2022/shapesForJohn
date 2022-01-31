extends Spatial

#var rigidBodyHolder
func _ready():
	Global.onFloorClick.push_back(self)
	Global.rigidBodyHolder = get_parent().get_child(0)


func floor_clicked():
	var newInst = Global.newShape.instance()
	newInst.shape_name = Global.shape_name
	newInst.shape_color = Global.shape_color
	var child = newInst.get_child(0)
	var randx = rand_range(-350, 300)
	var randy = rand_range(-100, -500)
	for c in newInst.get_children():
		if c is MeshInstance:
			var count = child.get_surface_material_count()
			for n in count:
				var mat = child.get_surface_material(n).duplicate()
				child.set_surface_material(n,mat)		
	newInst.translation = self.translation
	Global.rigidBodyHolder.add_child(newInst)
	newInst.add_central_force(Vector3(randx, -250, randy))


func _on_Ring_updated_array(shape_name_Array, shape_color_Array):
	get_node("../UserInterface").update_Score_Board(shape_name_Array, shape_color_Array)
	pass # Replace with function body.
