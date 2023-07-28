extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Create a variable of type Person.
	var person:Person = Person.new()
	
	# Verify that it has two legs by printing numberOfLegs to the console.
	print(person.numberOfLegs)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Create a class called Animal and give it a member variable
# called "numberOfLegs", which is an integer, and a member function called
# "move" that prints "moving" to the console when called.
class Animal:
	var numberOfLegs:int
	
	func move():
		print("moving")


# Create a class called Person that inherits from Animal.
class Person extends Animal:
# Give it a constructor that sets numberOfLegs to 2.
	func _init():
		numberOfLegs = 2

# Override the "move" function to print "walking".
	func move():
		print("walking")
