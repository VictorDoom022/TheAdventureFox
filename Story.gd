extends Node2D

var count = 0
var story = [
	"Adventure Fox is just an ordinary little fox, It is the eldest brother, two sisters and parents in the family, and the family lives happily.the parents and the younger sisters not being able to hunt, the little fox must take on the heavy responsibility of foraging and find food for the family.",
	"One day, when the fox came back from hunting as usual, he found that his home had been destroyed, his parents and sister were dead. The little fox is very sad.",
	"The little fox ran to ask the 'sensible dog' outside the green forest for details. Only then did the little fox know that a group of mutated bats had come to this green forest, and many animals had already suffered.",
	"It wanted to avenge the lost family, so it went to the village where humans lived and wanted to learn from humans how to defeat bats. The little fox was very lucky, it met a family and adopted him. ",
	"A year later, the little fox has learned a lot from humans and said goodbye to the humans who adopted it. The little fox is grateful for them, but it has to avenge the family. So the little fox returned to the green forest and started his own adventure.",
]


func _ready():
	$StoryLabel.text = story[count]
	$StoryLabel/Tween.replace_by($NextButton)
	

func _on_SkipButton_pressed():
	get_tree().change_scene("res://ChooceLevel.tscn")


func _on_NextButton_pressed():
	if count != story.size() - 1:
		count += 1
		$StoryLabel.text = story[count]
	else:
		get_tree().change_scene("res://ChooceLevel.tscn")
