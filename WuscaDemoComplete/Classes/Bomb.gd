extends RigidBody2D

var time_to_detonation=2
func _ready():
	time_to_detonation=rand_range(1,5)
func _process(delta):
	time_to_detonation-=delta
	if(time_to_detonation<0):
		make_explosion()
		self.queue_free()
	
var path_to_explosion=load("res://Classes/Explosion.tscn")
func make_explosion():
	var instance=path_to_explosion.instance()
	instance.position=self.position
	get_parent().add_child(instance)
	
	
