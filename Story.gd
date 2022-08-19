extends Node2D


func _ready():
	$StoryLabel.text = "ok"


func _on_SkipButton_pressed():
	get_tree().change_scene("res://ChooceLevel.tscn")

