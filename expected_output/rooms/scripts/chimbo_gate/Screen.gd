extends Node2D


# Declare member variables here. Examples:
# var a = 2
var compteur = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func reversePlay():
	$screen/AnimationPlayer.play_backwards("welcome")


func _on_AnimationPlayer_animation_finished(anim_name):
	compteur = compteur + 1
	if compteur == 2:
		$screen/AnimationPlayer.play("news")


func _on_Button_pressed():
	OS.shell_open("https://discord.gg/aYph9u8")
