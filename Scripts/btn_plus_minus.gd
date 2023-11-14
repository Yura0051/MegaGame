extends VBoxContainer
signal btn_plus_pressed(value:int)
signal btn_minus_pressed(value:int)
const workersCount:int = 1
func _on_btn_plus_pressed():
	emit_signal("btn_plus_pressed", workersCount)

func _on_btn_minus_pressed():
	emit_signal("btn_minus_pressed", -workersCount)
