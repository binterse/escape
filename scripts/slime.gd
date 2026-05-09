extends Area2D

func _ready() -> void:
	pass
	#body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player" or body.is_in_group("player"):
		game_over()

func game_over() -> void:
	var layer := CanvasLayer.new()
	get_tree().current_scene.add_child(layer)

	var label := Label.new()
	label.text = "GAME OVER!"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 64)

	layer.add_child(label)
	label.set_anchors_preset(Control.PRESET_FULL_RECT)

	get_tree().paused = true
