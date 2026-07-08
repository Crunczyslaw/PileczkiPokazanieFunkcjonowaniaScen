extends Node

@export var Ball: PackedScene

func _input(event):
	if event.is_action_pressed("click"):
		var new_ball = Ball.instantiate() # instantiate() robi dosłownie kopie 
		new_ball.position = get_viewport().get_mouse_position() # bierze pozycje myszki względem pozycji na ekranie (nie pozycji growej)
		add_child(new_ball)
