extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Define two variables, one of the parent class and one of the child class.
	var housecat:Cat = Cat.new()
	var lion:BigCat = BigCat.new()
	
	# Define a third variable of the second child class.
	var mutant:MutantCat = MutantCat.new()

	# Invoke the correct class method for each variable. 
	housecat.sayHello()
	lion.sayHello()
	mutant.sayHello()
	
	# Polymorphism
	var cat:Cat = mutant
	
	# Verify that cat is a MutantCat by checking its sayHello() output
	cat.sayHello()

	# Re-cast cat into a MutantCat
	var recastCat:MutantCat = cat as MutantCat
	
	# We can only access isRadioactive if the variable is defined as a MutantCat
	if (recastCat.isRadioactive):
		print("It's glowing!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Define a class.
class Cat:
	var weight
	var displayName

	func sayHello():
		print("Meow")

# Define a class that inherits from that class.
class BigCat extends Cat:
	# Override a method of the parent class.
	func sayHello():
		print("Roar!")

# Define a second class that inherits from that class.
class MutantCat extends Cat:
	var isRadioactive:bool = true
	# Override a method of the parent class, but also invoke the parent
	# class' implementation of that method via the "super" keyword.
	func sayHello():
		super()
		print("Roar!")
