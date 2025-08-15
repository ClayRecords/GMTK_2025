/// @description Change speed; Debug add cars & turrets

if (global.debug) {
	if (keyboard_check_pressed(187)) {
		// Press '=' to add train_cars
		add_car();
	}

	if (keyboard_check_pressed(189)) {
		// Press '-' to add turret
		add_weapon_to_next_car(obj_turret_basic);
	}
}

// Increase train speed on up arrow press
if (keyboard_check(vk_up)) {
	train_speed_change(1);
}

// Decrease train speed on down arrow press
if (keyboard_check(vk_down)) {
	train_speed_change(-1);
}