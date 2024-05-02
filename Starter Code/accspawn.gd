extends Sprite2D

var  number:float
var TextureToUse := load("res://icon.svg")
var Radius : float = 10.0

# Called when the node enters the scene tree for the first time.
# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_h_slider_value_changed(value):
	number = value




func _ready() -> void:
	pass
	



func _on_button_pressed():
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
	
