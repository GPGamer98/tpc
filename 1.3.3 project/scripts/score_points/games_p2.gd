extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _add():
	if text == "0":
		text = "1"
	elif text == "1":
		text = "2"
	elif text == "2":
		text = "3"
	elif text == "3":
		text = "4"
	elif text == "4":
		text = "5"
	elif text == "5":
		text = "6"
