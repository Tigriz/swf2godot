extends YSort

var droppedItems = []
export var roomName = ""

func _ready():
	Global.sendRoomReady()
	Global.spawnNPC("Red111", Vector2(601, 382), "r;29;26;2;3;10;0")

func _on_chimbo_gate_to_gate_to_pro_body_entered(body):
	if body.get_name() == Global.myPlayerId:
		Global.goTo("gate_to_pro")
		
func _on_chimbo_gate_to_gate_to_deb_body_entered(body):
	if body.get_name() == Global.myPlayerId:
		Global.goTo("gate_to_deb")
	
func _on_npcCollision_body_entered(body):
	if body.get_name() == Global.myPlayerId:
		Global.nearNPC = true

func _on_npcCollision_body_exited(body):
	if body.get_name() == Global.myPlayerId:
		Global.nearNPC = false
