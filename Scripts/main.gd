extends Node2D

signal end_turn_pressed

var population:int = 0
var food:int = 0
var wood:int = 0
var stone:int = 0
var currTurn = 1

func  _ready():
	#var listOfBuildings = get_node(BaseBuild)
	pass
	
func _on_btn_end_turn_pressed():
	currTurn+=1
	proceedTurn()
	emit_signal("end_turn_pressed")
	
func proceedTurn():
	pass
