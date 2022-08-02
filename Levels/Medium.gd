extends Node2D


func _ready():
	print('ready')

func _on_EndPointArea_area_entered(area):
	get_tree().change_scene("res://UI/Win.tscn")
	print('win player area')
