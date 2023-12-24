extends CanvasLayer
export var leval_label = "Leval 1"

func _ready():
	Global.player.connect("stats_changed", self, "_on_stats_changed")
	$LevelLabel.text = leval_label
	
func _on_stats_changed():
	$ScoreLabel.text  = "Score : " + str(Global.score)
	
	if(Global.player.lives == 0):
		Global.score -= 100
		get_tree().reload_current_scene()
		
	for n in range(5):
		var heart = get_node("Lives/L"+str(n+1))
		if(Global.player.lives < n+1):
			heart.visible = false
		else:
			heart.visible = true 
	
 
