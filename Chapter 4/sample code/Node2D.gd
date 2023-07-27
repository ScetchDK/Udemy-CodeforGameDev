extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# WHILE loop
	var x = 0

	while (x < 5):
		print(x)
		x = x + 1

	# FOR loop
	for n in range(5):
		print(n)
	
	# BREAK example
	x = 0
	
	while (x < 5):
		print(x)
		if (x == 2):
			break
		x = x + 1
	
	# CONTINUE example
	x = 0
	
	while (x < 5):
		print(x)
		x = x + 1
		if (x == 2):
			continue
		print("End of the loop!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
