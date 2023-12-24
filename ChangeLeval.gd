extends Area2D

export var leval_name ="MainMenu"

func _ready():
	pass  
 
func _on_Area2D_body_entered(body):
	if(body.name=="Player"):
		get_tree().change_scene("res://"+leval_name+".tscn")
