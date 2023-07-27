extends Node2D

# Declare an enum
enum Element_types { Air, Earth, Fire, Water, Dragon, Steel }

# Called when the node enters the scene tree for the first time.
func _ready():
	# Define a variable with an initial value.
	var height = 6
	
	# Print that variable's value to the console.
	print(height)
	
	# Assign a different value to that variable.
	height = 5
	
	# Print the variable's new value to the console.
	print(height)
	
	# Basic variable operations - addition
	height = height + 1

	# Basic variable operations - subtraction
	height = 10 - height
	
	# Basic variable operations - multiplication
	height = 2 * 5
	
	# Basic variable operations - division
	height = height / 2
	
	# Declare a constant
	const gravity = 9.8
	
	# Datatypes - integer
	var someValue = 55
	
	# Datatypes - float
	someValue = 3.14
	
	# Datatypes - string
	someValue = "Hello world"
	
	# Datatypes - boolean
	someValue = false

	#Assign an enum value
	someValue = Element_types.Water


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
