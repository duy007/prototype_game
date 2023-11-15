extends Control

func _ready():
	MainMenu.disabled = true
# test
func to_menu():
	MainMenu.disabled = false
	EgoVenture.change_scene("res://scenes/menu.tscn")
