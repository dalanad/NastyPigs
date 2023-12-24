extends KinematicBody2D

export (int) var speed = 150
export (int) var jump_speed = -300
export (int) var gravity = 600
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

onready var playerSprite = get_node("PlayerSprite")

var state_machine
var velocity = Vector2.ZERO
var collider
var score = 0
export var lives = 3
var isTakingHit = false

signal stats_changed

func _ready():
	Global.player = self
	get_node("area_x").connect("area_entered", self, "_on_hitbox_collision")
	state_machine = $AnimationTree.get("parameters/playback")

func _on_hitbox_collision(value):
	collider = value.get_parent()
	
	if (value.is_in_group("collectables")):
		Global.score += 10
		emit_signal("stats_changed")
	
	if (value.is_in_group("damage")):
		state_machine.travel("hit")
		lives -= 1
		isTakingHit = true
		emit_signal("stats_changed")	
		AudioManager.play("res://assets/music/loose.wav")
		yield(get_tree().create_timer(0.5), "timeout")
		isTakingHit = false
		
		

func get_input():
	var dir = 0
	
	if Input.is_action_pressed("right"):
		playerSprite.flip_h = false
		playerSprite.offset.x = 0
		dir += 1
	
	if Input.is_action_pressed("left"):
		playerSprite.flip_h = true
		playerSprite.offset.x = -15
		dir -= 1
	
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0, friction)
		
	if velocity.x != 0 :
		state_machine.travel("run")
	
	if velocity.y != 0:
		state_machine.travel("jump")
	
	if velocity.length() <= 10:
		state_machine.travel("idle")

func _physics_process(delta):
	if(isTakingHit):
		return
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("up"):
		if is_on_floor():
			AudioManager.play("res://assets/music/jump.wav")
			velocity.y = jump_speed
