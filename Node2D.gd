extends Node2D

onready var file = 'res://foobar.txt'

func _ready():
	load_file(file)

func load_file(file):

	var f = File.new()
	f.open(file, File.READ)
	var index = 1
	while not f.eof_reached(): # iterate through all lines until the end of file is reached
		var line = f.get_line()
		line += " "
		print(line + str(index))

		index += 1
	f.close()
	return
