extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Inventory.enable()
	Inventory.add_item(preload("res://inventory/bucket.tres"))
	Inventory.add_item(preload("res://inventory/tape.tres"))
#	(EgoVenture.state as GameState).money += (EgoVenture.state as GameState).money


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
