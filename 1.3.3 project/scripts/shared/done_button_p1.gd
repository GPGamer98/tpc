extends Button


@export var textbox: TextEdit
@export var name_label: Label
@export var window: Window


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	name_label.text = textbox.text
	window.visible = false
