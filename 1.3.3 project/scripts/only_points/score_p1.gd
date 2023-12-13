extends Label


var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_plus_pressed():
	score += 1
	text = str(score)


func _on_minus_pressed():
	if score != 0:
		score -= 1
		text = str(score)


func _on_reset_button_pressed():
	score = 0
	text = str(score)
