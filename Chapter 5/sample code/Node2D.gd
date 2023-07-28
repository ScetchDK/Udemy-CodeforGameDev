extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Function call
	sayHello()
	
	# Function call with input parameter
	sayHelloTo("Steve")
	
	# Function call with a different input parameter
	sayHelloTo("Sandra")
	
	# Print the return value of a function
	print(add(3, 5))
	
	# Assign the return value of a function to a variable
	var result = subtract(6, 3)
	
	print(result)


# Custom function declaration
func sayHello():
	print("Hello there")
	print("General Kenobi")


# Custom function declaration with input parameter
# Godot will not allow you to define two functions with the same name within the
# same class.
func sayHelloTo(person):
	print("Hello there")
	print(person)


# Custom function that returns a value
func add(a, b):
	return a + b


# Custom function that returns a value of a defined type
func subtract(a, b) -> int:
	return a + b
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
