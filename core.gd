# This is the core singleton of your game, that holds
# key functions required to run the game
extends Node

# test

# Initialize, configure the game and connect required
# signals
func _ready():
	_initialization()
	EgoVenture.configure(preload("res://configuration.tres"))
	MainMenu.connect("new_game", self, "_on_new_game")
	Inventory.connect("triggered_inventory_item", self, "_on_triggered_inventory_item")
	EgoVenture.connect("game_loaded", self, "_on_load")


# Triggered when an inventory item was used on another
#
# ** Parameters **
#
# - item1: First item
# - item2: Second item
func _on_triggered_inventory_item(item1: InventoryItem, item2: InventoryItem):
	if (item1.title == "old frame" and item2.title == "metal") or (item1.title == "metal" and item2.title == "old frame") :
		Inventory.remove_item(preload("res://inventory/old_frame.tres"))
		Inventory.remove_item(preload("res://inventory/metal.tres"))
		Inventory.add_item(preload("res://inventory/frame.tres"), true)
	if (item1.title == "copper" and item2.title == "empty motherboard") or (item1.title == "empty motherboard" and item2.title == "copper") :
		Inventory.remove_item(preload("res://inventory/empty_motherboard.tres"))
		Inventory.remove_item(preload("res://inventory/copper.tres"))
		Inventory.add_item(preload("res://inventory/new_motherboard.tres"), true)
	if (item1.title == "oil can" and item2.title == "old engine") or (item1.title == "old engine" and item2.title == "oil can") :
		Inventory.remove_item(preload("res://inventory/old_engine.tres"))
		Inventory.remove_item(preload("res://inventory/oilcan.tres"))
		Inventory.add_item(preload("res://inventory/engine.tres"), true)
	if (item1.title == "frame" and item2.title == "engine") or (item1.title == "engine" and item2.title == "frame") :
		Inventory.remove_item(preload("res://inventory/frame.tres"))
		Inventory.remove_item(preload("res://inventory/engine.tres"))
		Inventory.add_item(preload("res://inventory/dumb_seascooter.tres"), true)
	if (item1.title == "dumb seascooter" and item2.title == "new motherboard") or (item1.title == "new motherboard" and item2.title == "dumb seascooter") :
		Inventory.remove_item(preload("res://inventory/new_motherboard.tres"))
		Inventory.remove_item(preload("res://inventory/dumb_seascooter.tres"))
		Inventory.add_item(preload("res://inventory/seascooter.tres"), true)


# Triggered when a new game is started.
func _on_new_game():
	_initialization()
	# Should call an introduction sequence
	EgoVenture.change_scene("res://scenes/room/room01.tscn")


# Initialize the game state
func _initialization():
	var state = GameState.new()
	EgoVenture.state = state


# Triggered when a save game is loaded	
func _on_load():
	pass
