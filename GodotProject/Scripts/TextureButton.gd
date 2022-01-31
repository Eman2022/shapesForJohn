extends Button

export var color_name := "no name"
export var materiall : Material

func _ready():
	connect("pressed",self,"onClick")

func onClick():
	Global.activeMaterial = self.materiall
	Global.shape_color = self.color_name + " "
	print("color set to ", self.color_name)
