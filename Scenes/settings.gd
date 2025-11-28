extends Control

@onready var Buttonanimation = $Buttonanimation

func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0,value/5)

func _on_mute_toggled(toggled_on):
	AudioServer.set_bus_mute(0, toggled_on)

func _on_resolution_item_selected(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1600,900))
		2:
			DisplayServer.window_set_size(Vector2i(1280,720))
 


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Fail_screen.tscn")



func _on_animated_sprite_2d_animation_finished():
	if Input.is_action_just_pressed("ui_Mouse"):
		Buttonanimation.play("Button",true)
		get_tree().change_scene_to_file("res://settings.tscn")
