extends StaticBody2D

enum Type {Diamond, Coin	, Heart}
export(Type) var type

var points = 0
var healthPoints = 0

func _ready():
	if(type == Type.Coin):
		$AnimatedSprite.animation = 'coin'
		points = 10
	if(type == Type.Diamond):
		$AnimatedSprite.animation = 'blueDiamond'
		points = 20
	if(type == Type.Heart):
		$AnimatedSprite.animation = 'heart'
		healthPoints = 1	
	pass 


 
func _on_Area2D_body_entered(body):
	AudioManager.play("res://assets/music/Fruit collect 1.wav")
	queue_free()
