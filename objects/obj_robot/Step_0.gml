/// @description Charge up, fire
life_count++;

if (charging_fire) {
	charge_fire_count = charge_fire_count + 1;
	if (charge_fire_count >= fire_interval) {
		instance_create_layer(x, y-53, "Effects", obj_robot_spark, {
			_speed: bullet_speed,
			_direction: direction,
			damage: bullet_damage
		});
		charging_fire = false;
	}
}

// Take a step
if (speed != 0) {
	if (life_count % (global.one_second * 0.5) == 0) {
		image_yscale = image_yscale * -1;
		obj_sound_manager.play_random_from_folder("clank", 0.1);
	}
}