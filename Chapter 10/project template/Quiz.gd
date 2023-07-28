extends Control

# Final project template file
# Follow along with the lesson video to complete the game.
# Refer to the "completed project" folder for the final version.

# Store references to the UI nodes so that Godot can access them via script.
@onready var tryAgainDialog = $"Try Again Dialog"

@onready var questionDisplay = $"Game Display/MarginContainer/VBoxContainer/Panel/Question Text"
@onready var statusTextLabel = $"Game Display/MarginContainer/VBoxContainer/Status Labels/Status Text"
@onready var scoreLabel = $"Game Display/MarginContainer/VBoxContainer/Status Labels/Score"
@onready var finalScoreLabel = $"Try Again Dialog/MarginContainer/VBoxContainer/Final Score"

@onready var choiceButtons = $"Game Display/MarginContainer/VBoxContainer/Choices".get_children()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Signal functions - These are called when the four buttons on the UI
# have been pressed.
func _on_choice_button_1_pressed():
	pass


func _on_choice_button_2_pressed():
	pass


func _on_choice_button_3_pressed():
	pass


func _on_choice_button_4_pressed():
	pass


# Called when the "No" button on the "Try again?" dialog has been pressed.
func _on_no_button_pressed():
	pass


# Called when the "Yes" button on the "Try again?" dialog has been pressed.
func _on_yes_button_pressed():
	pass


################################################################################
## INNER CLASSES
################################################################################

