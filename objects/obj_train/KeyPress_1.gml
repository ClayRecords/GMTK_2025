/// @description Debug add cars, turrets

if (global.debug) {
	if (keyboard_check_pressed(187)) {
		// Press '=' to add train_cars
		add_car();
	}

	if (keyboard_check_pressed(189)){
		// Press '-' to add turret
		add_weapon_to_next_car(obj_turret_water);
	}
	

}

// Increase train speed on up arrow press
if (keyboard_check(vk_up)) {
		if (current_gear == max_train_gear) {
			return;
		}
		current_gear += 1;
}

// Decrease train speed on down arrow press
if (keyboard_check(vk_down)) {
	if (current_gear == -max_train_gear){
		return;
	}
		current_gear -= 1;
}
obj_speed_lever.image_index = obj_train.current_gear + 4;