/// @description Handle debug mouse clicks, end of wave
if (global.pause) {
	alarm[0] = alarm[0] + 1;
	alarm[1] = alarm[1] + 1;
	alarm[2] = alarm[2] + 1;
	return;	
}

if (global.debug) {
	if (mouse_check_button_pressed(mb_left)) {
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_soldier)
	}
}

if (self.active_wave != noone && !self.wave_is_spawning) {
	// Get all enemies
	var enemies_count = instance_number(obj_enemy_parent);
	
	// If none, wave is done
	if (enemies_count <= 0) {
		self.active_wave = noone;
		alarm[0] = self.time_between_waves;
		var imagination_str = "You got 1 Imagination from completing a wave!";
		reward_imagination(imagination_str);
	}
}