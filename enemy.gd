extends CharacterBody2D

signal hitObject

func _physics_process(delta):
	move_and_slide()
	
	if velocity.length() > 0:
		$AnimationPlayer.play("walk_right")
	else:
		$AnimationPlayer.play("idle")
		
	if velocity.x > 0:
		$Sprite2D.flip_h = false
	else:
		$Sprite2D.flip_h = true

# include code that detects collision, and raises signal hitObject to have enemy stop moving 
