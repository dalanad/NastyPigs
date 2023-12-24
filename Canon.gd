extends StaticBody2D


func _ready():
	pass


const Bomb = preload("res://Bomb.tscn")


func _on_Timer_timeout():
	var bomb = Bomb.instance()
	bomb.velocity.x = 100 + randi() % 300
	bomb.expolde_on_ground = true
	self.add_child(bomb)
	$Timer.start() 

