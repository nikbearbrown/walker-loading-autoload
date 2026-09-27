extends SceneTree

func _initialize() -> void:
	run_probe.call_deferred()

func click(button: Control) -> void:
	for pressed in [true, false]:
		var event := InputEventMouseButton.new()
		event.button_index = MOUSE_BUTTON_LEFT
		event.position = button.get_global_rect().get_center()
		event.pressed = pressed
		root.push_input(event, true)

func run_probe() -> void:
	change_scene_to_file("res://scene_a.tscn")
	for i in range(4):
		await process_frame
	var singleton_id := root.get_node("global").get_instance_id()
	var ok := true
	for expected in ["SceneB", "SceneA", "SceneB", "SceneA"]:
		var old_scene_id := current_scene.get_instance_id()
		var button_name := "GoToSceneB" if expected == "SceneB" else "GoToSceneA"
		click(current_scene.get_node(button_name))
		for i in range(4):
			await process_frame
		var changed: bool = current_scene.name == expected
		var released := not is_instance_id_valid(old_scene_id)
		var persistent := root.get_node("global").get_instance_id() == singleton_id
		print("EXPECTED=", expected, " CHANGED=", changed, " OLD_RELEASED=", released, " AUTOLOAD_PERSISTENT=", persistent)
		ok = ok and changed and released and persistent
	current_scene.queue_free()
	await process_frame
	await process_frame
	quit(0 if ok else 1)
