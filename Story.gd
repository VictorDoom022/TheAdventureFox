extends Node2D

var count = 0
var story = [
	"The Adventure Fox is just an ordinary little fox. He is the eldest among the siblings. He lives happily with his family. But...due to his parent's old age, he has to take on the heavy responsibility of foraging and finding food for the family",
	"One day, when the fox came back from hunting, as usual. He found that his home had been destroyed, and his family members were all dead. The little fox is very sad and furious.",
	"The little fox ran to ask the 'sensible dog' outside the green forest for details. Only then did the little fox know that a group of mutated bats had come to this green forest, and many animals have died.",
	"He wanted to avenge his lost family, so he went to the village where humans lived and learned how to defeat the bats from them. The little fox was very lucky, he met a family and adopted him. ",
	"A year later, the little fox has learned a lot from humans and said goodbye to the humans who adopted him. The little fox is grateful for them, but he has to avenge his family. So the little fox returned to the green forest and started his own adventure. Here starts the journey of his revenge..." 
]


func _ready():
	$StoryLabel.text = story[count]
	$StoryLabel/Tween.replace_by($NextButton)
	

func _on_SkipButton_pressed():
	get_tree().change_scene("res://ChooseLevel.tscn")


func _on_NextButton_pressed():
	if count != story.size() - 1:
		count += 1
		$StoryLabel.text = story[count]
	else:
		get_tree().change_scene("res://ChooseLevel.tscn")
