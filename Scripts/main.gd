extends Node2D

signal end_turn_pressed

var population:int = 0
var food:int = 0
var wood:int = 0
var stone:int = 0

func _on_btn_end_turn_pressed():
	emit_signal("end_turn_pressed")
