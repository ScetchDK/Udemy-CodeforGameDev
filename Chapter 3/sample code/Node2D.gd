extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var score = 100
	
	# Basic equality comparison
	if (score == 100):
		print("Well done!")
		
	# Comparison operators - less than
	if (score < 100):
		print("Score is less than 100")
	
	# Comparison operators - greater than
	if (score > 100):
		print("Score is greater than 100")
	
	# Comparison operators - equality
	if (score == 100):
		print("Score is equal to 100")
	
	# Comparison operators - inequality
	if (score != 100):
		print("Score is not equal to 100")
	
	# Comparison operators - less than or equal to
	if (score <= 100):
		print("Score is less than or equal to 100")
	
	# Comparison operators - greater than or equal to
	if (score >= 100):
		print("Score is greater than or equal to 100")
	
	# Compound comparison - AND
	if (score == 100 and score < 500):
		print("Score is both equal to 100 and less than 500.")
	
	if (score == 100 && score < 500):
		print("Score is both equal to 100 and less than 500.")
	
	# Compound comparison - OR
	if (score == 100 or score < 500):
		print("Score is either equal to 100 or less than 500.")
	
	if (score == 100 || score < 500):
		print("Score is either equal to 100 or less than 500.")
	
	# Boolean variable as condition
	var playerIsReady:bool = true

	if (playerIsReady):
		print("Ready!")
	
	# if-then-else
	if (playerIsReady):
		print("Ready!")
	else:
		print("Still waiting!")
	
	# Match statement
	match score:
		100:
			print("Your score is 100.")
		200:
			print("Your score is 200.")
		300:
			print("Your score is 300.")
		
	# Match statement with default condition
	match score:
		100:
			print("Your score is 100.")
		200:
			print("Your score is 200.")
		300:
			print("Your score is 300.")
		_:
			print("Your score wasn't one of the other values.")
	
	# if-then-elif
	if (score == 100):
		print("Your score is 100.")
	elif (score == 200):
		print("Your score is 200.")
	else:
		print("At least you tried.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
