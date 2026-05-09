extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_body_entered(body: Node2D) -> void:
	print("Goal touched by: ", body.name)
	if body.name == "player" or body.is_in_group("player"):
		win()

func win() -> void:
	var layer := CanvasLayer.new()
	get_tree().current_scene.add_child(layer)

	var label := Label.new()
	label.text = "WIN!"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 64)

	layer.add_child(label)
	label.set_anchors_preset(Control.PRESET_FULL_RECT)

	get_tree().paused = true
