extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const Bomb = preload("res://Bomb.tscn")

func _ready():
	pass

 
func _on_Timer_timeout():
	var bomb= Bomb.instance()
	bomb.expolde_on_ground = true
	self.add_child(bomb)
	$Timer.start() 
	
