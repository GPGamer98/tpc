extends Label


@export var games_object: Label

@export var plus_button: Button
@export var minus_button: Button

@export var other_p_points: Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if games_object.text == "6":
			plus_button.disabled = true
	else:
		plus_button.disabled = false


func _on_plus_pressed():
	if text == "0":
		text = "15"
	elif text == "15":
		text = "30"
	elif text == "30":
		text = "40"
	elif text == "40":
		text = "0"
		other_p_points.text = "0"
		games_object._add()


func _on_minus_pressed():
	if text == "0":
		if games_object.text != "0":
			text = "40"
			if games_object.text == "1":
				games_object.text = "0"
			elif games_object.text == "2":
				games_object.text = "1"
			elif games_object.text == "3":
				games_object.text = "2"
			elif games_object.text == "4":
				games_object.text = "3"
			elif games_object.text == "5":
				games_object.text = "4"
			elif games_object.text == "6":
				games_object.text = "5"
	elif text == "15":
		text = "0"
	elif text == "30":
		text = "15"
	elif text == "40":
		text = "30"
