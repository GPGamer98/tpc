extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_force_download_pressed():
	if OS.get_name() == "Android":
		OS.shell_open("https://github.com/GPGamer98/tpc/releases/download/latest/tpc_android_latest.apk")
	elif OS.get_name() == "Windows":
		OS.shell_open("https://github.com/GPGamer98/tpc/releases/download/latest/tpc_windows_latest.exe")


func _on_menu_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
