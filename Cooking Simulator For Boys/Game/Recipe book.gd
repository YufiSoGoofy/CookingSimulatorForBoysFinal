extends Button

@onready var panel = get_node("/root/Node2D/Recipe book/Recipe book instructions")

func _ready():
	panel.visible = false

func _on_pressed():
	panel.visible = true
	$"Recipe book instructions/AnimationPlayer1".play("Popup")


func _on_exit_pressed():
	$"Recipe book instructions/AnimationPlayer1".play_backwards("Popup")

