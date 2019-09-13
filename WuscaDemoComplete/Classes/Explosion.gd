extends Node2D


func _ready():
	get_node("Sprite").scale=Vector2(rand_range(1,2),rand_range(1,2))

var cool_down=0.1
func _process(delta):
	cool_down-=delta
	if(cool_down<0):
		cool_down=0.1
		get_node("Sprite").frame+=1
	if(get_node("Sprite").frame>=11):
		queue_free()
