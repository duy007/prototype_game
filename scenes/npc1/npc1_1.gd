extends Node2D


func _ready():
	Parrot.connect("finished_dialog", self, "_on_finished_dialog")
	$pc_dia_1.hide()
	$dialog_window.hide()
	$pc_dia_2.hide()
	$pc_dia_3.hide()
	Parrot.play(preload("res://dialogs/npc1_q0.tres"))
	yield(Parrot, "finished_dialog")
#	(EgoVenture.state as GameState).money += (EgoVenture.state as GameState).money


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _update_hotspots():
	var state = EgoVenture.state
	print(state.npc_1)
	if state.npc_1 == 1:
		$pc_dia_1.show()
	if state.npc_1 == 2:
		$pc_dia_1.hide()
		$pc_dia_2.show()
		$pc_dia_3.show()
	if state.npc_1 == 3:
		$pc_dia_2.hide()
		$pc_dia_3.hide()
		$dialog_window.hide()
		(EgoVenture.state as GameState).npc_1 = 0
		EgoVenture.change_scene("res://scenes/room/room01.tscn")

func _on_finished_dialog(dialog_id: String):
	var state = EgoVenture.state
	if dialog_id == "npc1_q0":
		(EgoVenture.state as GameState).npc_1 += 1
		$dialog_window.show()
	if dialog_id == "npc1_q1":
		$dialog_window.show()
		(EgoVenture.state as GameState).npc_1 += 1 
	if dialog_id == "npc1_q2":
		(EgoVenture.state as GameState).npc_1 += 1 
	_update_hotspots()

func _on_pc_dia_1_pressed():
	$dialog_window.hide()
	Parrot.play(preload("res://dialogs/npc1_q1.tres"))
	yield(Parrot, "finished_dialog")
	
func _on_pc_dia_2_or_3_pressed():
	Parrot.play(preload("res://dialogs/npc1_q2.tres"))
	yield(Parrot, "finished_dialog")
