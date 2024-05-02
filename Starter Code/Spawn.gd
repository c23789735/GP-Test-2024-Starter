extends Button

var  number:float
var TextureToUse := load("res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex")
var Radius : float = 100.0

# Called when the node enters the scene tree for the first time.
# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_h_slider_value_changed(value):
	number = value




func _ready() -> void:
	pass
	


func _on_pressed(spawn):
	for i in range( 0, number ):
		
		# create a new node or instance something
		var newNode : Sprite2D
		newNode.texture = TextureToUse
		# add it beneath the current node
		add_child( newNode )
		# build a transform that consists of an offset, then rotation
		var nTransform = newNode.get_transform()
		# offset upwards based on the radius
		nTransform = nTransform.translated( Vector2( 0.0, -Radius ) )
		# rotate (around 0,0) based on the angle between each node
		nTransform = nTransform.rotated( deg_to_rad( i * 360.0 / float(number) ) )
		# update the node transform
		newNode.transform = nTransform
	
	
	


# Replace with function body.
