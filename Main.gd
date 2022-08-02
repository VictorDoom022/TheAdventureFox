extends Node2D




func _on_Easy_pressed():
	get_tree().change_scene("res://Levels/Easy.tscn")


func _on_Medium_pressed():
	get_tree().change_scene("res://Levels/Medium.tscn")


func _on_Hard_pressed():
	get_tree().change_scene("res://Levels/Hard.tscn")
