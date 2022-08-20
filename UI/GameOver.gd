extends Node2D

var stats = PlayerStats


func _on_HomeButton_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_RetryButton_pressed():
	stats.health = 4
	get_tree().change_scene(stats.current_level_scene)
