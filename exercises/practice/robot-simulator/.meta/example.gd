class_name RobotSimulator

var _pos: Vector2i
var _dir: String


var position: Vector2i:
	get:
		return _pos


var direction: String:
	get:
		return _dir


func _init(position: Vector2i = Vector2i(0, 0), direction: String = 'north'):
	_pos = position
	_dir = direction


func move(instructions: String):
	const allowed_directions = ['north', 'east', 'south', 'west']
	for instruction in instructions:
		match [instruction, direction]:
			['L', _]:
				var index = allowed_directions.find(_dir) - 1
				_dir = allowed_directions[index]
			['R', _]:
				var index = allowed_directions.find(_dir)
				index = (index + 1) % 4
				_dir = allowed_directions[index]
			['A', 'north']:
				_pos += Vector2i(0, 1)
			['A', 'south']:
				_pos += Vector2i(0, -1)
			['A', 'east']:
				_pos += Vector2i(1, 0)
			['A', 'west']:
				_pos += Vector2i(-1, 0)
