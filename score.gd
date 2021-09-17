extends Node2D

var ScreenH
var screenW

var Leve = 1
var score = 0
var cost = 2

func _ready():
	add(0)
	var scr = get_viewport_rect().size
	screenW = scr.x
	ScreenH = scr.y
	#remember z_index are layers
	randomize()
	z_index = 1
	
func add(var points):
	score += points
	$ScoreLabel.text = "Flops: " + str(score)
	$CostLabel.text = "Cost of next gosha :" +str(cost)
	
