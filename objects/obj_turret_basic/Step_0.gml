/// @description 

if (target != noone) {
	fire_cooldown--;
	if (fire_cooldown <= 0) {
		instance_create_layer(x, y, "Instances", obj_bullet, {direction: target_direction});
		fire_cooldown = fire_rate;
	}
} else {
	fire_cooldown = fire_rate;
}