extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var generator = load("res://obj_1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.instantiate_generator == true:
		var ins_gen = generator.instance()
		add_child(ins_gen)
		Global.instantiate_generator = false
