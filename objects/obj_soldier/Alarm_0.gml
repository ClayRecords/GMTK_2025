/// @description Fire!

instance_create_layer(x, y, "Instances", obj_soldier_bullet, {
	speed: bullet_speed,
	direction: direction,
	damage: bullet_damage
});

alarm[0] = fire_rate;
