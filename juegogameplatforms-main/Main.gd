extends Node2D

onready var sprite = preload("res://level1.tscn") 

func _ready():
		var s = sprite.instance()
		add_child(s)

func _input(event):
	if event.is_action_pressed("ui_accept"):
		buyflop()

func buyflop():
	if(Score.score >= Score.cost and Score.goshas < 10):
		var s = sprite.instance()
		Score.score = Score.score - Score.cost
		add_child(s)
		Score.goshas += 1
		Score.cost = Score.cost * 2
		Score.add(0)
		
