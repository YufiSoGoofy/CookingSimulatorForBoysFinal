extends Label

var dot_count = 0
var delay_counter = 0
var cycle_counter = 0
var delay_max = 65  #Adjust to make load time faster or slower

func _ready():
	set_process(true)


func _process(_delta):
	delay_counter += 1
	if delay_counter >= delay_max:
		delay_counter = 0
		dot_count = (dot_count + 1) % 4
		if dot_count == 0:
			cycle_counter += 1
		if cycle_counter >= 3:
			get_tree().change_scene_to_file("res://Game/Game.tscn") #Change path to cutscene path
		else:
			var dots = ""
			for i in range(dot_count):
				dots += "."
			text = "Loading" + dots
