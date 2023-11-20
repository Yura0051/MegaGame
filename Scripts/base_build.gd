class_name BaseBuild 
extends Node2D
var currentWorkers:int = 0
var maxWorkers:int = 10

var baseProdutionRate:float = 1

var isBuilt = false

signal goodsProduced(id:int, value:int)

func _ready():
	var btnPlus = get_node("BtnPlusMinus")

	btnPlus._btn_plus_pressed.connect(changeWorkersAmount)
	btnPlus._btn_minus_pressed.connect(changeWorkersAmount)
	
func changeWorkersAmount(value:int):
	
	if currentWorkers + value > maxWorkers || currentWorkers + value < 0:
		return
	else:
		currentWorkers+=value
		$CurrentWorkers.set_text("%d/%d" %[currentWorkers, maxWorkers]) 
	
func produceGoods():
	return baseProdutionRate * currentWorkers
