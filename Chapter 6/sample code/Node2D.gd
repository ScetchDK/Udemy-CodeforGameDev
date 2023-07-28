extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Declare an array
	var myNewArray:Array

	# Declare an array - alternate method
	var myOtherNewArray = []
	
	# Declare an array with a set of pre-existing values
	var myPreloadedArray = [3, 5, 101, 840, 0]
	
	# Is valid - "0" is the index of the first element in the array
	print(myPreloadedArray[0])

	# Is NOT valid - the array only has five elements, so there is no element
	# with an index of 8.  Comment out this line before attempting to run the scene.
	print(myPreloadedArray[8])
	
	# Looping through an array using a while loop
	var index = 0
	
	while (index < 5):
		print(myPreloadedArray[index])
		index = index + 1

	# Looping through an array using its size() method
	index = 0
	
	while (index < myPreloadedArray.size()):
		print(myPreloadedArray[index])
		index = index + 1
	
	# Looping through an array using a for loop
	for i in range(myPreloadedArray.size()):
		print(myPreloadedArray[i])
	
	# Looping through an array using a for-in loop
	for element in myPreloadedArray:
		print(element)
		
	# Declare a dictionary
	var myDictionary:Dictionary
	
	# Declare a dictionary - alternate method
	var myOtherDictionary = {}
	
	# Assign some string data to a key in this dictionary
	myDictionary["someKey"] = "This is some string data."

	# Accessing a dictionary's values by their key
	print(myDictionary["someKey"])

	# Pre-defining a dictionary's values
	var quests = {
		"key1" : "value1",
		"key2" : "value2"
	}
	
	# Using a dictionary to store quest flags for an RPG
	var quest_flags = {
		"saw the old man" : false,
		"rescued the princess" : false
	}
	
	# Iterating through a dictionary - keys
	for quest in quests:
		print(quest)
		
	# Iterating through a dictionary - values
	for quest in quests:
		print(quests[quest])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
