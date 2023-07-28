extends Node2D

# Coding for Game Development - Exercises
# Use this project to practice writing scripts with the expected requirements.
# Run the scene as explained in Lesson One to check your results.
# Sample answers can be found in the "exercise answers" project.

# Called when the node enters the scene tree for the first time.
func _ready():
	# Define a variable of type Car.
	var car:Car
	
	# Assign a new Car object to that variable using the new() keyword and
	# input values.
	car = Car.new("Honda", 2011, "Red")
	
	# Print the car's color, model, and year to the console.
	print(car.color)
	print(car.model)
	print(car.year)
	
	# Call the car's start method.
	car.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Define a class called Car.
class Car:
# Define three class variables - "model" (string), "year" (integer), 
# and "color" (string).
	var model:String
	
	# Define a getter and setter for the "year" property.  The setter should
	# reject any values that are less than 1886.
	var year:int:
		get:
			return year
		set(value):
			if (value >= 1886):
				year = value
	var color:String

# Define a class constructor that takes three values as input parameters
# and assigns them to the class' member variables.
	func _init(m, y, c):
		model = m
		year = y
		color = c

# Define a class method called "start" that prints "starting car" to the console.
	func start():
		print("Starting car")
