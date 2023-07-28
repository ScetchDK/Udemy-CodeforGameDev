extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Write a WHILE loop that prints out the values from 0 to 10.
	var x = 0
	
	while x <= 10:
		print(x)
		x = x + 1
	
	# Write a WHILE loop that prints out the sum of every 
	# other value from 10 to 20.
	var sum = 0
	var index = 10
	
	while index <= 20:
		sum = sum + index
		index = index + 2
	
	print(sum)
	
	# Write a FOR loop that prints out the values from 0 to 10.
	for value in range(11):
		print(value)
	
	# Write a FOR loop that prints out the values from 0 to 10, skipping 5.
	# Use the continue keyword.
	for value in range(11):
		if value == 5:
			continue
		else:
			print(value)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
