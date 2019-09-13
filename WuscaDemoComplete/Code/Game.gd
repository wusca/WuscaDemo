extends Node2D

func _ready():
	#create_bomb()
	pass

var cool_down=0.5
func _process(delta):
	cool_down-=delta
	if(cool_down<0):
		cool_down=0.25+rand_range(-0.2,0.2)
		create_bomb()
	


var path_to_bomb=load("res://Classes/Bomb.tscn")
func create_bomb():
	var instance=path_to_bomb.instance()
	add_child(instance)
	

