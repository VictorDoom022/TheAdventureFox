extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_EndPointArea_area_entered(area):
	get_tree().change_scene("res://UI/Win.tscn")
	print('win player area')
