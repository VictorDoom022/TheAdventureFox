extends Node2D

var stats = PlayerStats

func _ready():
	if stats.current_level_scene == "res://Levels/Hard.tscn":
		$VBoxContainer/NextLevelButton.hide()

func _on_RetryButton_pressed():
	stats.health = 4
	get_tree().change_scene(stats.current_level_scene)


func _on_HomeButton_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_NextLevelButton_pressed():
	if stats.current_level_scene == "res://Levels/Easy.tscn":
		get_tree().change_scene("res://Levels/Medium.tscn")
	elif stats.current_level_scene == "res://Levels/Medium.tscn":
		get_tree().change_scene("res://Levels/Hard.tscn")
