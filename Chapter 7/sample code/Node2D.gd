extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Declare variables of type Person.  These variables are initially equal to null.
	var Bob:Person
	var Herman:Person
	
	# Initialize those variables with new objects of type Person.
	Bob = Person.new(6, 185, "Bob")
	Herman = Person.new(5, 165, "Herman")
	
	# Call objects' methods
	Bob.sayHello()
	Herman.sayHello()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Define a (inner) class
class Person:
	var height:
		# Getter method
		get:
			return height
		# Setter method
		set(value):
			if (height != 0):
				height = value
			
	var weight
	var displayName
	
	func _init(h, w, n):
		height = h
		weight = w
		displayName = n

	func sayHello():
		print("Hello, my name is %s" % displayName)
