extends Node2D

var stats = PlayerStats

func _ready():
	stats.current_level_scene = get_tree().current_scene.filename
	print('ready')

func _on_EndPointArea_area_entered(area):
	get_tree().change_scene("res://UI/Win.tscn")
	print('win player area')
