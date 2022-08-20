extends Node2D

var stats = PlayerStats

# Called when the node enters the scene tree for the first time.
func _ready():
	stats.current_level_scene = get_tree().current_scene.filename

func _on_EndPointArea_area_entered(area):
	get_tree().change_scene("res://UI/Win.tscn")
	print('win player area')
