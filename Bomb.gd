extends KinematicBody2D

var velocity = Vector2.ZERO
var gravity = 100
var expolde_on_ground = false

export var effect_physics = true

func _ready():
	pass

func _physics_process(delta):
	if(!effect_physics) :
		return
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if(expolde_on_ground && is_on_floor()):
		$AnimatedSprite.play("explode")
		yield($AnimatedSprite, "animation_finished")
		queue_free()
	

func _on_Area2D_body_entered(body):
	if(body.name == 'Player'):
		$AnimatedSprite.play("explode")
		AudioManager.play("res://assets/music/Explode.wav")
		yield($AnimatedSprite, "animation_finished")
		queue_free()

