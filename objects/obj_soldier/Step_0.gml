/// @description If close enough, stop and shoot
if (global.pause) {
	speed = 0;
	return;	
}
else {
	speed = move_speed
}
var closest_point = get_closest_point_to_square_obj(x, y, obj_toy_box);
var distance = point_distance(x, y, closest_point.x, closest_point.y);

if (!is_shooting && distance <= shooting_distance) {
	is_shooting = true;
	speed = 0;
	alarm[0] = fire_rate;
}