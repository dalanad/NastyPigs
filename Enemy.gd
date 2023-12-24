extends KinematicBody2D

var speed : int = 80
var state_machine
var patrol_points
var patrol_index = 0
var vel = Vector2()
var dead = false

export (NodePath) var patrol_path
onready var enemySprite = get_node("Sprite")

func _ready():
	if patrol_path:
		patrol_points = get_node(patrol_path).curve.get_baked_points()
	state_machine = $AnimationTree.get("parameters/playback")

func _physics_process(delta:float) -> void :
	if !patrol_path:
		return
		
	if(dead):
		
		#queue_free()
		return

	var target = patrol_points[patrol_index]
	
	if abs(position.x - target.x) < 2:
		patrol_index = (patrol_index + 1) % patrol_points.size()
		target = patrol_points[patrol_index]
	
	if(vel.x < 0):
		enemySprite.flip_h = false
	else :
		enemySprite.flip_h = true
	
	vel = (target - position).normalized() * (speed/3)
	
	if vel.x != 0 :
		state_machine.travel("run")
		
	if vel.length() <= 2:
		state_machine.travel("idle")	
		
	vel = move_and_slide(vel)


func _on_DamageArea_body_entered(body):
	state_machine.start("attack")
	


func _on_KillArea_body_entered(body):
	if(body.name == 'Player'):
		if($DamageArea):
			$DamageArea.queue_free()
		AudioManager.play("res://assets/music/Blow 2.wav")
		dead = true
		state_machine.travel("hit")

func _at_dead_animation_end():
	queue_free()
