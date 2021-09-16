extends Node2D

var ScreenH
var screenW

var Leve = 1
var score = 0

func _ready():
	var scr = get_viewport_rect().size
	screenW = scr.x
	ScreenH = scr.y
	#remember z_index are layers
	randomize()
	z_index = 1
	print("Score: ", score)
	
func update():
	$ScoreLabel.text = "Score: " + str(score)
	
	#8-31 18:46
