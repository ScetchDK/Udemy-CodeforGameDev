extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Define and call a function that outputs "Hello world" to the console.
	helloWorld()
	
	# Define and call a function that outputs any message you pass to it 
	# to the console.
	sayAnything("The walrus was Paul")
	
	# Define and call a function that multiplies two numbers together and
	# returns the result as an integer.  Print that result to the console.
	print(multiply(2, 4))
	
	# Define and call a function that divides one number by another and
	# returns the result.  Use it, along with the multiplication function you
	# just wrote, to multiply 6 by 7, then divide the resulting value
	# by the results of dividing 4 by 2.
	print(multiply(6, 7) / divide(4, 2))
	

func helloWorld():
	print("Hello world")


func sayAnything(message):
	print(message)


func multiply(first, second) -> int:
	return first * second


func divide(first, second):
	return first / second


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
