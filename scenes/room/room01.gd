extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Inventory.enable()
	Inventory.add_item(preload("res://inventory/old_frame.tres"))
	Inventory.add_item(preload("res://inventory/metal.tres"))
	Inventory.add_item(preload("res://inventory/empty_motherboard.tres"))
	Inventory.add_item(preload("res://inventory/copper.tres"))
	Inventory.add_item(preload("res://inventory/old_engine.tres"))
	Inventory.add_item(preload("res://inventory/oilcan.tres"))


#	(EgoVenture.state as GameState).money += (EgoVenture.state as GameState).money



	


