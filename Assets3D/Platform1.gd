extends KinematicBody


var Flip = true
var Direction_Begin
var Direction_End
var Speed = 0.05

func _ready():
	Direction_Begin = $".".translation.x
	Direction_End = Direction_Begin + 30
	
func _physics_process(_delta):
	print($".".translation.x)
	if(Direction_Begin <= Direction_End and Flip):
		$".".translation.x += Speed
		if($".".translation.x >= Direction_End):
			Flip = false
			
	elif($".".translation.x >= Direction_Begin and !Flip):
		$".".translation.x -= Speed
		if($".".translation.x <= Direction_Begin):
			Flip = true
			
	
