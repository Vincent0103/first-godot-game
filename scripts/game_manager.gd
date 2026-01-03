extends Node

@onready var score_label: Label = $ScoreLabel
@onready var coins: Node = $"../Coins"

var score = 0
var totalCoins = 0

func _ready():
	totalCoins = coins.get_child_count()
	update_ui()

func add_point():
	score += 1
	update_ui()
	
func update_ui():
	var coinsLeft = totalCoins - score
	score_label.text = "Collected " + str(score) + " coins!\n" + str(coinsLeft) + " left."
