/// @description Find target

target = instance_nearest(x, y, obj_enemy_parent);
if (target != noone) {
	var target_distance = point_distance(x, y, target.x, target.y);
	if (target_distance > fire_range) {
		target = noone;
		return;
	}
	target_direction = point_direction(x, y, target.x, target.y);
	fire_direction  = target_direction;
}