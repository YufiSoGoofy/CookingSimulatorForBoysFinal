extends TextureButton

@onready var panel = get_node("/root/Node2D/Inventory/Panel")

# A variable to store the button state
var is_up = false

# Called when the node enters the scene tree for the first time.
func _on_pressed():
	if not is_up:
		$AnimationPlayer3.play("Moveup")
		is_up = true


func _on_exit_pressed():
	if is_up:
		$AnimationPlayer3.play("Movedown")
		is_up = false
