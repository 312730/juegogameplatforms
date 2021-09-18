extends Sprite

var  vel
var spin
onready var screensize = get_viewport_rect().size
onready var width = texture.get_width() / 9.0

func _ready():
	vel = Vector2(rand_range(70,200), 0).rotated(rand_range( 0.4, PI/2 ))
	spin = rand_range(-PI, PI)
	set_position(screensize /2)
	set_process(true)


func _process(delta):
	
	set_rotation(get_rotation() + spin * delta)
	var pos = get_position()
	pos += vel * delta
	if pos.x >= screensize.x-width or pos.x <= 0+width:
		vel.x *= -1
		Score.add(1)
		$Bonk.play()
	if pos.y >= screensize.y-width or pos.y <= 0+width:
		vel.y *= -1
		Score.add(1)
		$Bonk.play()
	set_position(pos)
