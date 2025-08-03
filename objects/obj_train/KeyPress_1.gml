/// @description Debug add cars, turrets

if (obj_game_manager.debug) {
	if (keyboard_check_pressed(187)) {
		// Press '=' to add train_cars
		add_car();
	}

	if (keyboard_check_pressed(189)){
		// Press '-' to add turret
		add_weapon_to_next_car(obj_turret_basic);
	}
	
	// Increase train speed on left arrow press
	if (keyboard_check(vk_left)) {
		increase_train_speed()
	}

	// Decrease train speed on right arrow press
	if (keyboard_check(vk_right)) {
	    decrease_train_speed()
	}
}