extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer2.play("Popup")

func _on_quit_pressed():
	$AnimationPlayer2.play_backwards("Popup")
