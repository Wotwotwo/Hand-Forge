extends Node2D
var deck = [preload("res://cardDatas/examplewarrior.tres")]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var t: Tween = create_tween()
	for i in range(3):
		var ins = preload("res://scenes/card_scene.tscn")
		var card = ins.instantiate()
		card.data = deck.pick_random()
		card.position = Vector2( 564,229)
		add_child(card)
		t.tween_property(card,"position",Vector2(223+ ( 100 * i),189),0.2)
		
		pass
	pass # Replace with function body.
