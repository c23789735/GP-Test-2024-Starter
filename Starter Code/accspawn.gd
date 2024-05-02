extends Sprite2D

var  number:float
var sprite = Sprite2D.new()
@export var thing:PackedScene

# Called when the node enters the scene tree for the first time.
# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_h_slider_value_changed(value):
	number = value




func _ready() -> void:
	pass
	



func _on_button_pressed(event):
	if event:	
		var new_thing = thing.instantiate()
		new_thing.global_position = event.global_position
		new_thing.name = "block " + str(event)
		get_tree().get_root().add_child(new_thing) 
		
		## scale = Vector2.ZERO
		##var tween = create_tween().set_trans(Tween.TRANS_CIRC)
		##tween.tween_property($"../block", "global_position", event.position, 1.0)
	pass
		
		#
	
