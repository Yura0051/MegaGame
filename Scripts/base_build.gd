extends Node2D
class_name BaseBuild 

var currentWorkers:int = 0
var maxWorkers:int = 10

var baseProdutionRate:float = 1

func _ready():
	var btnPlus = get_node("BtnPlusMinus")
	
	btnPlus.btn_plus_pressed.connect(changeWorkersAmount)
	btnPlus.btn_minus_pressed.connect(changeWorkersAmount)
	
func changeWorkersAmount(value:int):
	if currentWorkers + value > maxWorkers or currentWorkers + value < 0:
		return
	else:
		currentWorkers+=value
		$CurrentWorkers.set_text("%d/%d" %[currentWorkers, maxWorkers]) 
	
