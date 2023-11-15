extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2		
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(str((EgoVenture.state as GameState).money))

func _process(delta):
	print(str((EgoVenture.state as GameState).money))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
