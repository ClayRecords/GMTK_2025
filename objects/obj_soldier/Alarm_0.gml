/// @description Fire!

instance_create_layer(x, y, "Instances", obj_soldier_bullet, {
	_speed: bullet_speed,
	_direction: direction,
	damage: bullet_damage
});

obj_sound_manager.play_random_from_folder("pew", 0.1);

alarm[0] = fire_rate;
