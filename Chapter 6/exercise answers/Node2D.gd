extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Declare an array with three pre-defined strings.
	var myArray = ["Hello world", "I'm a string", "I'm also a string"]
	
	# Print the second element of the array to the console.
	print(myArray[1])
	
	# Print the size of the array to the console using the array's size() method.
	print(myArray.size())
	
	# Use a for loop to print the contents of your array to the console.
	# Do not manually define the length of the array in the loop.
	for x in range(myArray.size()):
		print(myArray[x])
	
	# Use a for-in loop to print the contents of your array to the console.
	for x in myArray:
		print(x)
	
	# Define a dictionary with three key-value pairs consisting of integer
	# keys and string values.
	var someDict = {
		5 : "Hello",
		10 : "How are you?",
		99 : "This is my string, and you can't have it."
	}
	
	# Print out the contents of the dictionary to the console using
	# a for-in loop.  Print both the key and the value.
	for key in someDict:
		print(key)
		print(someDict[key])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
