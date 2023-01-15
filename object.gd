extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var is_place = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !is_place:
		var mouse_loc = get_global_mouse_position()
		position = mouse_loc
		
func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed && event.button_index == BUTTON_LEFT:
		is_place = true
	if event is InputEventMouseButton && event.pressed && event.button_index == BUTTON_RIGHT:
		var polygon = $Polygon2D
		polygon.set_color(Color(0.90,0.34,0.23,1.00))

func _on_Timer_timeout():
	if is_place == true:
		Global.generator_energy += 5
