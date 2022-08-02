extends Node2D

var stats = PlayerStats

func _on_Retry_pressed():
	stats.health = 4  # set back to max health
	get_tree().change_scene("res://Main.tscn")
