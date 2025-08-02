/// @description Fire!

instance_create_layer(x, y, "Instances", obj_soldier_bullet, {
	_speed: bullet_speed,
	_direction: direction,
	damage: bullet_damage
});

alarm[0] = fire_rate;
