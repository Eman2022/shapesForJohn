extends Control
var i = 0
var newMat = preload("res://Materials/Material.tres")
var highRough = 0.85

#Color Labels
var new_brown = RichTextLabel.new()
var new_pink = RichTextLabel.new()
var new_white = RichTextLabel.new()
var new_black = RichTextLabel.new()
var new_orange = RichTextLabel.new()
var new_purple = RichTextLabel.new()
var new_yellow = RichTextLabel.new()
var new_green = RichTextLabel.new()
var new_blue = RichTextLabel.new()
var new_red = RichTextLabel.new()
var new_gold = RichTextLabel.new()
var new_silver = RichTextLabel.new()
var new_stripes = RichTextLabel.new()
var new_polkadot = RichTextLabel.new()
var new_rainbow = RichTextLabel.new()

#Shape Labels
var new_circle = RichTextLabel.new()
var new_square = RichTextLabel.new()
var new_star = RichTextLabel.new()
var new_oval = RichTextLabel.new()
var new_rectangle = RichTextLabel.new()
var new_triangle = RichTextLabel.new()
var new_cube = RichTextLabel.new()
var new_cylinder = RichTextLabel.new()
var new_cone = RichTextLabel.new()
var new_sphere = RichTextLabel.new()
var new_pyramid = RichTextLabel.new()
var new_mine = RichTextLabel.new()
var shape_labels = [new_circle, new_square, new_star, new_oval, new_rectangle, new_triangle, new_cube, new_cylinder, new_cone, new_sphere, new_pyramid]
var shapeNames = ["circle ", "square ", "star ", "oval ", "rectangle ", "triangle ", "cube ", "cylinder ", "cone ", "sphere ", "pyramid "]
var color_labels = [new_brown, new_pink, new_white, new_black, new_orange, new_purple, new_yellow, new_green, new_red, new_blue, new_gold, new_silver, new_stripes, new_polkadot, new_rainbow]
var colorNames = ["brown ", "pink ", "white ", "black ", "orange ", "purple ", "yellow ", "green ", "blue ", "red ", "gold ", "silver ", "stripes ", "polkadot ", "rainbow "]
var colors = [Color(0.5, 0.2, 0.15, 1), Color(1, 0.5, 0.5, 1), Color(1.0, 1.0, 1.0, 1.0), Color(0.0, 0.0, 0.0, 1.0), Color(1, 0.45, 0, 1), Color( 0.58, 0.13, 0.94, 1), Color(1.0, 1.0, 0.0, 1.0), Color(0.0, 0.5, 0.0, 1.0), Color(0, 0, 1.0, 1.0), Color(1.0, 0, 0, 1.0), Color(0.5, 0.5, 0.5, 1)]


func set_Color_Labels(number, color):
	color_labels[number].add_color_override("default_color", colors[color])
	color_labels[number].add_font_override("normal_font", load("res://fonts/scorefont.tres"))
	color_labels[number].set_custom_minimum_size(Vector2(90,60))

func set_Shape_Labels(number):
	shape_labels[number].add_font_override("normal_font", load("res://fonts/scorefont.tres"))
	shape_labels[number].set_custom_minimum_size(Vector2(90,60))

func update_Shape_Labels(shape_name_Array, number):
	if shape_name_Array.count(shapeNames[number]) >= 1:
		shape_labels[number].text = (shapeNames[number])
		$ShapeLabelContainer.add_child(shape_labels[number])
		shape_labels[number].add_text(str(shape_name_Array.count(shapeNames[number])))
	elif shape_name_Array.count(shapeNames[number]) < 1:
		$ShapeLabelContainer.remove_child(shape_labels[number])

func update_Color_Labels(shape_color_Array, number, color):
	if shape_color_Array.count(colorNames[number]) >= 1:
		color_labels[number].text = (colorNames[number])
		$ColorLabelContainer.add_child(color_labels[number])
		color_labels[number].add_text(str(shape_color_Array.count(colorNames[number])))
	elif shape_color_Array.count(colorNames[number]) < 1:
		$ColorLabelContainer.remove_child(color_labels[number])

func _ready():
	set_Color_Labels(0, 0)
	set_Color_Labels(1, 1)
	set_Color_Labels(2, 2)
	set_Color_Labels(3, 3)
	set_Color_Labels(4, 4)
	set_Color_Labels(5, 5)
	set_Color_Labels(6, 6)
	set_Color_Labels(7, 7)
	set_Color_Labels(8, 8)
	set_Color_Labels(9, 9)
	set_Color_Labels(10, 10)
	set_Color_Labels(11, 10)
	set_Color_Labels(12, 10)
	set_Color_Labels(13, 10)
	set_Color_Labels(14, 10)
	set_Shape_Labels(0)
	set_Shape_Labels(1)
	set_Shape_Labels(2)
	set_Shape_Labels(3)
	set_Shape_Labels(4)
	set_Shape_Labels(5)
	set_Shape_Labels(6)
	set_Shape_Labels(7)
	set_Shape_Labels(8)
	set_Shape_Labels(9)
	set_Shape_Labels(10)


func update_Score_Board(shape_name_Array, shape_color_Array):
	update_Color_Labels(shape_color_Array, 0, 0)
	update_Color_Labels(shape_color_Array, 1, 1)
	update_Color_Labels(shape_color_Array, 2, 2)
	update_Color_Labels(shape_color_Array, 3, 3)
	update_Color_Labels(shape_color_Array, 4, 4)
	update_Color_Labels(shape_color_Array, 5, 5)
	update_Color_Labels(shape_color_Array, 6, 6)
	update_Color_Labels(shape_color_Array, 7, 7)
	update_Color_Labels(shape_color_Array, 8, 8)
	update_Color_Labels(shape_color_Array, 9, 9)
	update_Color_Labels(shape_color_Array, 10, 10)
	update_Color_Labels(shape_color_Array, 11, 10)
	update_Color_Labels(shape_color_Array, 12, 10)
	update_Color_Labels(shape_color_Array, 13, 10)
	update_Color_Labels(shape_color_Array, 14, 10)
	update_Shape_Labels(shape_name_Array, 0)
	update_Shape_Labels(shape_name_Array, 1)
	update_Shape_Labels(shape_name_Array, 2)
	update_Shape_Labels(shape_name_Array, 3)
	update_Shape_Labels(shape_name_Array, 4)
	update_Shape_Labels(shape_name_Array, 5)
	update_Shape_Labels(shape_name_Array, 6)
	update_Shape_Labels(shape_name_Array, 7)
	update_Shape_Labels(shape_name_Array, 8)
	update_Shape_Labels(shape_name_Array, 9)
	update_Shape_Labels(shape_name_Array, 10)

#3D Shapes
func _on_sphereButton_pressed():
	Global.shape_name = "sphere "
	Global.newShape = load("res://Scenes/3D Shapes/plainSphere.tscn")
	pass
	
func _on_cubeButton_pressed():
	Global.shape_name = "cube "
	Global.newShape = load("res://Scenes/3D Shapes/plainCube.tscn")
	pass

func _on_coneButton_pressed():
	Global.shape_name = "cone "
	Global.newShape = load("res://Scenes/3D Shapes/plainCone.tscn")
	pass
	
func _on_cylinderButton_pressed():
	Global.shape_name = "cylinder "
	Global.newShape = load("res://Scenes/3D Shapes/plainCylinder.tscn")
	pass
	
func _on_pyramidButton_pressed():
	Global.shape_name = "pyramid "
	Global.newShape = load("res://Scenes/3D Shapes/plainPyramid.tscn")
	pass 


#color buttons go here
func _on_redButton_pressed():
	Global.shape_color = "red "
	newMat.albedo_texture = null
	newMat.albedo_color = colors[9]
	newMat.roughness = highRough
	newMat.metallic = .1
	pass

func _on_blueButton_pressed():
	Global.shape_color = "blue "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(0, 0, 1.0, 1.0)
	newMat.roughness = highRough
	newMat.metallic = 0
	pass

func _on_greenButton_pressed():
	Global.shape_color = "green "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(0.0, 0.5, 0.0, 1.0)
	newMat.roughness = highRough
	newMat.metallic = 0
	pass

func _on_purpleButton_pressed():
	Global.shape_color = "purple "
	newMat.albedo_texture = null
	newMat.albedo_color = Color( 0.58, 0.13, 0.94, 1)
	newMat.roughness = highRough
	newMat.metallic = 0.1
	pass
	
func _on_yellowButton_pressed():
	Global.shape_color = "yellow "
	newMat.albedo_texture = null
	newMat.albedo_color = colors[6]
	newMat.roughness = highRough
	newMat.metallic = 0
	pass

func _on_goldButton_pressed():
	Global.shape_color = "gold "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(1, 0.84, 0, 1)
	newMat.roughness = 0
	newMat.metallic = .9
	pass

func _on_pinkButton_pressed():
	Global.shape_color = "pink "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(1, 0.5, 0.5, 1)
	newMat.roughness = highRough
	newMat.metallic = 0
	pass
	
func _on_silverButton_pressed():
	Global.shape_color = "silver "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(0.85, 0.85, 0.85, 1)
	newMat.roughness = 0
	newMat.metallic = .9
	pass

func _on_blackButton_pressed():
	Global.shape_color = "black "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(0.0, 0.0, 0.0, 1.0)
	newMat.roughness = highRough
	newMat.metallic = 0.1
	pass

func _on_brownButton_pressed():
	Global.shape_color = "brown "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(0.5, 0.2, 0.15, 1)
	newMat.roughness = highRough
	newMat.metallic = 0
	pass

func _on_orangeButton_pressed():
	Global.shape_color = "orange "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(1, 0.45, 0, 1)
	newMat.roughness = highRough
	newMat.metallic = 0
	pass
	
func _on_whiteButton_pressed():
	Global.shape_color = "white "
	newMat.albedo_texture = null
	newMat.albedo_color = Color(1.0, 1.0, 1.0, 1.0)
	newMat.roughness = highRough
	newMat.metallic = 0.2
	pass

#2D Shapes
func _on_squareButton_pressed():
	Global.shape_name = "square "
	Global.newShape = load("res://Scenes/2D Shapes/plainSquare.tscn")
	pass # Replace with function body.


func _on_starButt_pressed():
	Global.shape_name = "star "
	Global.newShape = load("res://Scenes/2D Shapes/plainStar.tscn")
	pass # Replace with function body.


func _on_triangleButt_pressed():
	Global.shape_name = "triangle "
	Global.newShape = load("res://Scenes/2D Shapes/plainTriangle.tscn")
	pass # Replace with function body.


func _on_ovalButt_pressed():
	Global.shape_name = "oval "
	Global.newShape = load("res://Scenes/2D Shapes/plainOval.tscn")
	pass # Replace with function body.


func _on_circleButt_pressed():
	Global.shape_name = "circle "
	Global.newShape = load("res://Scenes/2D Shapes/plainCircle.tscn")
	pass # Replace with function body.


func _on_rectangleButt_pressed():
	Global.shape_name = "rectangle "
	Global.newShape = load("res://Scenes/2D Shapes/plainRectangle.tscn")
	pass # Replace with function body.

func _on_clearButton_pressed():
	Global.shape_name = "unnamed "
	Global.shape_color = "unnamed "
	for child in Global.rigidBodyHolder.get_children():
		child.queue_free()
	pass # Replace with function body.

#Patterns
func _on_rbowButton_pressed():
	Global.shape_color = "rainbow "
	newMat.albedo_color = Color(1, 1, 1, 1)
	newMat.albedo_texture = load("res://Materials/rainbowrot.jpg")
	newMat.roughness = highRough
	newMat.metallic = 0
	pass # Replace with function body.


func _on_polkadotButton_pressed():
	Global.shape_color = "polkadot "
	newMat.albedo_color = Color(1, 1, 1, 1)
	newMat.albedo_texture = load("res://Materials/polkadot3.jpg")
	newMat.roughness = highRough
	newMat.metallic = 0
	pass # Replace with function body.




func _on_stripesButton_pressed():
	Global.shape_color = "stripes "
	newMat.albedo_color = Color(1, 1, 1, 1)
	newMat.albedo_texture = load("res://Materials/stripes.jpg")
	newMat.roughness = highRough
	newMat.metallic = 0
	pass # Replace with function body.
