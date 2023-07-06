extends Node2D

@export var backgroundColor: Color
@onready var particleScene = preload('res://particle.tscn')

func _ready():
	RenderingServer.set_default_clear_color(backgroundColor)
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	for y_multiplier in range(0, 10):
		for x_multiplier in range(0,50):
			var p = particleScene.instantiate()
			p.position= Vector2(20 * x_multiplier, 20 * y_multiplier)
			p.myTarget = $BlackHole
			add_child(p)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
