/// @description Toggle walk

if (speed = 0) {
	// Is stopped, walk
	speed = move_speed;
	alarm[0] = walk_interval;
} else {
	// Is walking, stop
	speed = 0;
	alarm[0] = pause_interval;
	charging_fire = true;
	charge_fire_count = 0;
}
