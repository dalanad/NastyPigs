extends Control

func _ready():
	if($ScoreLabel):
		$ScoreLabel.text = 'Score : '+ str(Global.score)
		Global.score = 0
	pass  

func _on_Button_pressed():
	get_tree().change_scene("res://Level_1.tscn")


func _on_Button2_pressed():
	get_tree().quit()


func _on_Button3_pressed():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_StartButton_pressed():
	get_tree().change_scene("res://Level_1.tscn")


func _on_RestartButton_pressed():
	get_tree().change_scene("res://Level_1.tscn")
