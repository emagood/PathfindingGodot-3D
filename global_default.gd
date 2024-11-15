extends Node

enum Action {IDLE, WALK, RUN, FALL, PRAY, JUMP, ATTACK}
var CurrentAction : Action = Action.IDLE

func _ready():
	var event_key = InputEventKey.new()
	InputMap.add_action("toggle_fullscreen")
	event_key.keycode = KEY_F11
	InputMap.action_add_event("toggle_fullscreen", event_key)
 	
	event_key = InputEventKey.new()
	event_key.keycode = KEY_ESCAPE
	InputMap.action_add_event("ui_cancel", event_key)

	event_key = InputEventKey.new()
	event_key.keycode = KEY_W
	InputMap.action_add_event("ui_up", event_key)
	event_key = InputEventKey.new()
	event_key.keycode = KEY_A
	InputMap.action_add_event("ui_left", event_key)
	event_key = InputEventKey.new()
	event_key.keycode = KEY_S
	InputMap.action_add_event("ui_down", event_key)
	event_key = InputEventKey.new()
	event_key.keycode = KEY_D
	InputMap.action_add_event("ui_right", event_key)

func _process(_delta):
	# Handle Quitting
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

	# Toggle Fullscreen
	if Input.is_action_just_pressed("toggle_fullscreen"): 
		match DisplayServer.window_get_mode():
			DisplayServer.WINDOW_MODE_FULLSCREEN:
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.WINDOW_MODE_WINDOWED:
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
