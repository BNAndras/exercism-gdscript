func same_field_values(robot_a, robot_b):
	return robot_a.position == robot_b.position && robot_a.direction == robot_b.direction


func test_create_robot_at_origin_facing_north(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'north')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'north')
	return [true, same_field_values(robot_a, robot_b)]


func test_create_robot_at_negative_position_facing_south(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(-1, -1), 'south')
	var robot_b = RobotSimulator.new(Vector2i(-1, -1), 'south')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_clockwise_changes_north_to_east(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'north')
	robot_a.move('R')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'east')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_clockwise_changes_east_to_south(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'east')
	robot_a.move('R')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'south')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_clockwise_changes_south_to_west(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'south')
	robot_a.move('R')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'west')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_clockwise_changes_west_to_north(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'west')
	robot_a.move('R')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'north')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_counterclockwise_changes_north_to_west(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'north')
	robot_a.move('L')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'west')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_counterclockwise_changes_west_to_south(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'west')
	robot_a.move('L')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'south')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_counterclockwise_changes_south_to_east(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'south')
	robot_a.move('L')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'east')
	return [true, same_field_values(robot_a, robot_b)]


func test_rotating_counterclockwise_changes_east_to_north(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'east')
	robot_a.move('L')
	var robot_b = RobotSimulator.new(Vector2i(0, 0), 'north')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_forward_one_facing_north_increments_y(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'north')
	robot_a.move('A')
	var robot_b = RobotSimulator.new(Vector2i(0, 1), 'north')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_forward_one_facing_south_decrements_y(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'south')
	robot_a.move('A')
	var robot_b = RobotSimulator.new(Vector2i(0, -1), 'south')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_forward_one_facing_east_increments_x(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'east')
	robot_a.move('A')
	var robot_b = RobotSimulator.new(Vector2i(1, 0), 'east')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_forward_one_facing_west_decrements_x(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'west')
	robot_a.move('A')
	var robot_b = RobotSimulator.new(Vector2i(-1, 0), 'west')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_east_and_north_from_readme(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(7, 3), 'north')
	robot_a.move('RAALAL')
	var robot_b = RobotSimulator.new(Vector2i(9, 4), 'west')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_west_and_north(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(0, 0), 'north')
	robot_a.move('LAAARALA')
	var robot_b = RobotSimulator.new(Vector2i(-4, 1), 'west')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_west_and_south(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(2, -7), 'east')
	robot_a.move('RRAAAAALA')
	var robot_b = RobotSimulator.new(Vector2i(-3, 8), 'south')
	return [true, same_field_values(robot_a, robot_b)]


func test_moving_west_and_south(solution_script):
	var robot_a = RobotSimulator.new(Vector2i(8, 4), 'south')
	robot_a.move('LAAARRRALLLL')
	var robot_b = RobotSimulator.new(Vector2i(11, 5), 'north')
	return [true, same_field_values(robot_a, robot_b)]
