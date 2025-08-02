/// @description Toggle walk

if (speed = 0) {
	// Is stopped, walk
	speed = move_speed;
	sprite_index = spr_robot_walk;
	alarm[0] = walk_interval;
} else {
	// Is walking, stop
	speed = 0;
	charging_fire = true;
	charge_fire_count = 0;
	sprite_index = spr_robot;
	alarm[0] = pause_interval;
}
