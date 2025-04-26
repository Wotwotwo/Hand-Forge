extends Node2D
#We're using control kay mas efficient siya

var data: cardData

var is_dragged: bool = false

func _process(_delta: float) -> void:
	if is_dragged:
		position = get_global_mouse_position()

func setup_appearance():
	%Sprite.frame = data.spriteIndex

func animate(type: int, dur: float):
	var t: Tween = create_tween()
	match type:
		0: #popup
			t.set_trans(Tween.TRANS_BACK)
			t.tween_property(self, "scale", Vector2(1.15,1.15), dur).from(Vector2.ONE)
		1: #drop
			t.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_ELASTIC)
			t.tween_property(self, "scale", Vector2.ONE, dur)
	await t.finished

func _on_collision_detection_mouse_entered() -> void:
	animate(0, 0.4)

func _on_collision_detection_mouse_exited() -> void:
	animate(1, 0.4)

func _on_collision_detection_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		is_dragged = true
		z_index = 1
	elif event.is_action_released("click"):
		is_dragged = false
		z_index = 0
