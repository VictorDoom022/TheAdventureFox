extends Node2D


var stats = PlayerStats

func _ready():
	stats.health = 4

func _on_BackButton_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_EasyButton_pressed():
	get_tree().change_scene("res://Levels/Easy.tscn")


func _on_Medium_pressed():
	get_tree().change_scene("res://Levels/Medium.tscn")


func _on_HardButton_pressed():
	get_tree().change_scene("res://Levels/Hard.tscn")
