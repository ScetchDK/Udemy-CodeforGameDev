extends Node2D

# Use the debugger to locate the error in this program.

# Called when the node enters the scene tree for the first time.
func _ready():
	var arrayOfInts = [2, 55, 97, 102, 66]

	for v in range(1, arrayOfInts.size()):
		print(arrayOfInts[v])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
