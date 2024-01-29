extends Button


# Called when the node enters the scene tree for the first time.
func _on_pressed():
	$"How to play/AnimationPlayer2".play("Popup")


func _on_exit_pressed():
	$"How to play/AnimationPlayer2".play_backwards("Popup")
