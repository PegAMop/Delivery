extends Node2D

@onready var raining = true

var raindrop = preload("res://Scenes/rain.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raining == true:
		add_child(raindrop.instantiate())
