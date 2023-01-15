extends Control

export var parent : NodePath
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$RichTextLabel.text = str(Global.generator_energy)
	if Global.open_generator_ui == true:
		$ColorRect.visible = true

func _on_Button_pressed():
	Global.instantiate_generator = true
