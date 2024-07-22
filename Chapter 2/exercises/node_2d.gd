extends Node2D

# Coding for Game Development - Exercises
# Use this project to practice writing scripts with the expected requirements.
# Run the scene as explained in Lesson One to check your results.
# Sample answers can be found in the "exercise answers" project.

# Called when the node enters the scene tree for the first time.
func _ready():
	# Exercise 1: Declare a variable called "myValue" with a value of 3.
	var myValue = 3
	
	# Exercise 2: Declare a second variable called "myOtherValue"
	# with a value of 4.
	var myOtherValue = 4
	
	# Exercise 3: Print the values of these two variables to the console.
	print(myValue)
	print (myOtherValue)
	
	# Exercise 4: Assign an integer value to myValue.
	myValue = 123
	
	# Exercise 5: Assign a float value to myValue.
	myValue = 3.14

	# Exercise 6: Assign a boolean value to myValue.
	myValue = true
	
	# Exercise 7: Assign a string value to myValue.
	myValue = "Hello there, weird fishes"
	
	# Exercise 8: Assign an integer value to both myValue and myOtherValue
	# and print the sum of the two variables.
	myValue = 4
	myOtherValue = 6
	print (myValue + myOtherValue)
	
	# Exercise 9: Assign a float value to both myValue and myOtherValue
	# and print the result of subtracting one from the other.
	myValue = 3.14
	myOtherValue = 3.69
	print (myValue + myOtherValue)
	
	# Exercise 10: Assign an integer value to myValue and a float
	# value to myOtherValue, then multiply them together and print the result.
	myValue = 69
	myOtherValue = 3.69
	print (myValue + myOtherValue)
	
	# Exercise 11: Assign an integer value to both myValue and myOtherValue
	# and print the result of dividing one by the other.
	myValue = 24
	myOtherValue = 6
	print(myValue / myOtherValue)
	
	# Exercise 12: Declare a constant called "SPEED_LIMIT" and assign it
	# the value 65.
	const SPEED_LIMIT = 65
	
	# Exercise 13: Declare an enum called Fruits and populate it with the values
	# Apples, Peaches, Bananas, and Pears.
	# (Do it at the top of the file as you cannot declare an enum within a
	# function.
	
	enum FRUITS {APPLES, PEACHES, BANANAS, PEARS}
	
	# Exercise 14: Declare a variable called "fruit" and assign it a value from
	# Fruits.
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
