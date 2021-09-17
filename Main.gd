extends Node2D

onready var sprite = preload("res://level1.tscn") 

func _ready():
	for i in range(9):
		var s = sprite.instance()
		add_child(s)
