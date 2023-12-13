extends Control


@export var installed_version = "1.3.3"

@onready var http_request = $HTTP_LatestVer


func _ready():
	http_request.request_completed.connect(_on_request_completed)
	http_request.request("https://pastebin.com/raw/WWVyxwDF")
		
	
func _on_request_completed(result, response_code, headers, body):
	if response_code == 200:
		if body.get_string_from_utf8() != str(installed_version):
			if OS.get_name() == "Android":
				OS.shell_open("https://github.com/GPGamer98/tpc/releases/download/latest/tpc_android_latest.apk")
				$Label.text = "Scaricato! Installa per continuare"
			elif OS.get_name() == "Windows":
				OS.shell_open("https://github.com/GPGamer98/tpc/releases/download/latest/tpc_windows_latest.exe")
				$Label.text = "Scaricato! Installa per continuare"
		elif body.get_string_from_utf8() == str(installed_version):
			get_tree().change_scene_to_file("res://scenes/menu.tscn")
	else:
		$Label.text = "Connessione al server non riuscita"
		$ErrCode.text = "Codice di Errore: %s" % response_code
		$Button.visible = true


func _on_continue_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
