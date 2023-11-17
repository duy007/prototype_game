extends Control

func _ready():
	Inventory.disable()
	MainMenu.toggle()
	MainMenu.disabled = true
	MainMenu.saveable = false
#	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/Resume").hide()
	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/Load").hide()
	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/Save").hide()
	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/Options").hide()
#	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/Continue").hide()
	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/NewGame").text = "New Game"
	MainMenu.get_node("Menu/MainMenu/Margin/VBox/MenuItems/Quit").text = "Quit"
