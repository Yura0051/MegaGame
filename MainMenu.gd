extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_btn_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_btn_option_pressed():
	get_tree().change_scene_to_file("res://Scenes/option_menu.tscn")


func _on_btn_exit_pressed():
	get_tree().quit()
