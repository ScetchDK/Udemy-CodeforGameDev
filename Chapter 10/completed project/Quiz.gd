extends Control

# Store references to the UI nodes so that Godot can access them via script.
@onready var tryAgainDialog = $"Try Again Dialog"

@onready var questionDisplay = $"Game Display/MarginContainer/VBoxContainer/Panel/Question Text"
@onready var statusTextLabel = $"Game Display/MarginContainer/VBoxContainer/Status Labels/Status Text"
@onready var scoreLabel = $"Game Display/MarginContainer/VBoxContainer/Status Labels/Score"
@onready var finalScoreLabel = $"Try Again Dialog/MarginContainer/VBoxContainer/Final Score"

@onready var choiceButtons = $"Game Display/MarginContainer/VBoxContainer/Choices".get_children()

# This array stores the list of Question objects the user will see.
var questions:Array = []

# This variable stores the index of the current question the user is
# answering in the questions array.
var currentQuestion:int

# The user's score.  Incremented by 1 for each correct answer.
var score:int

# Called when the node enters the scene tree for the first time.
func _ready():
	# Initialize the list of questions with four blank Question objects.
	for q in range(0, 4):
		questions.append(Question.new())
		
	# Manually assign the data to each question object in the array.
	questions[0].question = "When did the war of 1812 start?"
	questions[0].choices = ["1942", "1812", "1776", "1984"]
	questions[0].answer = 1
	
	questions[1].question = "Who is buried in Grant's tomb?"
	questions[1].choices = ["Napoleon Bonaparte", "Ulysses S. Grant", "George Washington", "Abraham Lincoln"]
	questions[1].answer = 1
	
	questions[2].question = "What direction is the North Pole?"
	questions[2].choices = ["North", "South", "East", "West"]
	questions[2].answer = 0
	
	questions[3].question = "Where is London Bridge located?"
	questions[3].choices = ["Los Angeles", "Moscow", "London", "Beijing"]
	questions[3].answer = 2

	# Start the game once the questions have been initialized.
	startGame()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Signal functions - These are called when the four buttons on the UI
# have been pressed.
func _on_choice_button_1_pressed():
	processAnswer(0)


func _on_choice_button_2_pressed():
	processAnswer(1)


func _on_choice_button_3_pressed():
	processAnswer(2)


func _on_choice_button_4_pressed():
	processAnswer(3)


# Called when the "No" button on the "Try again?" dialog has been pressed.
func _on_no_button_pressed():
	get_tree().quit()


# Called when the "Yes" button on the "Try again?" dialog has been pressed.
func _on_yes_button_pressed():
	tryAgainDialog.visible = false
	startGame()


# Starts the game.
func startGame():
	# Reset the index to the first question.
	currentQuestion = 0
	
	# Reset the player's score.
	score = 0
	
	# Set the status label to some instructions.
	statusTextLabel.text = "Input your answer:"
	
	# Update the score display with the initial value.
	updateScoreDisplay()
	
	# Show the current question (0, the first one.)
	showCurrentQuestion()


# Updates the main display window with the current question.
func showCurrentQuestion():
	questionDisplay.text = questions[currentQuestion].question

	# Loops through all four choice buttons and sets their text to the
	# corresponding choices from the current question.
	for index in range(choiceButtons.size()):
		choiceButtons[index].text = questions[currentQuestion].choices[index]


# Determines whether the player's answer is correct or not.
func processAnswer(playerAnswer:int):
	if (questions[currentQuestion].isCorrect(playerAnswer)):
		statusTextLabel.text = "Correct!"
		score = score + 1
	else:
		statusTextLabel.text = "Incorrect."

	# Refresh the score display with the updated value.
	updateScoreDisplay()
	
	# Advance the question counter.
	currentQuestion = currentQuestion + 1
	
	# If we're out of questions - that is, if currentQuestion is equal
	# to the number of questions in the list - end the game.
	# Otherwise, show the new current question.
	if (currentQuestion == questions.size()):
		endGame()
	else:
		showCurrentQuestion()
	

# Update the score display on the UI.
func updateScoreDisplay():
	scoreLabel.text = "Score: %s/%s" % [score, questions.size()]


# Ends the game by updating the final score label and then showing the
# "Try again?" dialog.
func endGame():
	finalScoreLabel.text = "Final Score: %s/%s" % [score, questions.size()]
	tryAgainDialog.visible = true


################################################################################
## INNER CLASSES
################################################################################
class Question:
	# The actual text of the question.
	var question:String
	
	# The list of possible answers.
	var choices:Array
	
	# The index of the correct answer within the array of choices.
	var answer:int

	# Returns true if the provided choice is correct, false if not.
	func isCorrect(choice:int) -> bool:
		return choice == answer
