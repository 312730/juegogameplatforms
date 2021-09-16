extends Sprite

var  vel = Vector2(130,100)
onready var screensize = get_viewport_rect().size
onready var width = texture.get_width() / 2.0

func _ready():
	set_position(screensize /2)
	set_process(true)


func _process(delta):
	set_rotation(get_rotation() + PI / 8 * delta)
	var pos = get_position()
	pos += vel * delta
	if pos.x >= screensize.x-50 or pos.x <= 0:
		vel.x *= -1
		Score.score += 10
	if pos.y >= screensize.y-50 or pos.y <=0:
		vel.y *+ -1
		Score.score += 10
	set_position(pos)
	Score.update()
