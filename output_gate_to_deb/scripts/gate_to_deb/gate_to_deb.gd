extends YSort

var droppedItems = []
export var roomName = ""

func _ready():
	Global.sendRoomReady()
