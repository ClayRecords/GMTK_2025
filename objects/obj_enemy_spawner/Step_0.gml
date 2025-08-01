/// @description Handle debug mouse clicks

if (obj_game_manager.debug) {
	if (mouse_check_button_pressed(mb_left)) {
		start_next_wave();
	}

	if (mouse_check_button_pressed(mb_right)) {
	    var xx = mouse_x;
	    var yy = mouse_y;
		instance_create_layer(xx, yy, "Instances", obj_soldier);
	}
}

if (self.active_wave != noone && !self.wave_is_spawning) {
	print("Wave done spawning?")
	// Get all enemies
	var enemies_count = instance_number(obj_enemy_parent);
	
	// If none, wave is done
	if (enemies_count <= 0) {
		self.active_wave = noone;
		alarm[0] = self.time_between_waves;
	}
}