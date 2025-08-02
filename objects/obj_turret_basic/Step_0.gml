/// @description Fire!

if (target != noone) {
	// Aim slightly ahead
	fire_direction = get_lead_direction(x, y, bullet_speed, target.x, target.y, target.hspeed, target.vspeed);	
	
	fire_cooldown--;	
	if (fire_cooldown <= 0) {
		instance_create_layer(x, y, "Instances", obj_bullet, {
			speed: bullet_speed,
			direction: fire_direction,
			damage: bullet_damage
		});
		fire_cooldown = fire_rate;
	}
} else {
	fire_cooldown = fire_rate;
}

// For future weapons
if (parent_car != noone) {
	x = parent_car.x;
	y = parent_car.y;
	
	image_angle = parent_car.image_angle;	
}