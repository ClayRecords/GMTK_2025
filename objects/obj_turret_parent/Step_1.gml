/// @description Find target

target = instance_nearest(x, y, obj_enemy_parent);
if (target != noone) {
	print("find")
	target_direction = point_direction(x, y, target.x, target.y);
}