extends VehicleBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


# Called every frame. 'delta' is the elapsed time since the previous frame.

const MAX_STER = 0.3
const ENGINE_POWER = 300
func _process(delta):
	steering = move_toward(steering, 
	Input.get_axis("ui_right","ui_left") * MAX_STER,
	delta*2.5)
	engine_force = Input.get_axis("ui_up", "ui_down") * ENGINE_POWER
	#print_debug(Input.get_axis("ui_down","ui_up") * ENGINE_POWER)
