extends RigidBody2D
signal  mob_colision
func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()





func _on_Mob_input_event(viewport, event, shape_idx):
	print(event)
_input_event()
