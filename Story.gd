extends Node2D

var count = 0
var story = [
	"Fox and his family ....",
	"One day, when the fox came back from hunting as usual, he found that his home had been destroyed, his parents and sister were dead.",
]

func _ready():
	$StoryLabel.text = story[count]


func _on_SkipButton_pressed():
	get_tree().change_scene("res://ChooceLevel.tscn")


func _on_NextButton_pressed():
	if count != story.size() - 1:
		count += 1
		$StoryLabel.text = story[count]
	else:
		get_tree().change_scene("res://ChooceLevel.tscn")
