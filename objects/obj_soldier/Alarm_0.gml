/// @description Fire!

instance_create_layer(x, y, "Instances", obj_soldier_bullet, {
	speed: bullet_speed,
	direction: direction,
	damage: bullet_damage
});

obj_sound_manager.play_random_from_folder("pew", 0.01);

alarm[0] = fire_rate;
