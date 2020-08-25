extends Node2D
export var flip = false
export (Array) var textos

func _ready():
	$texto.hide()
	$animacion.play("idle")
	$animacion.flip_h = flip 

func _on_collision_body_entered(body):
	if "player" in body.name:
		$texto.show()
		$texto/rich.active=true

func _on_collision_body_exited(body):
	$texto/rich.reset()
	$texto.hide()
