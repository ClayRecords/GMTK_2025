/// @description 

if (target != noone) {
	fire_direction = get_lead_direction(x, y, bullet_speed, target.x, target.y, target.hspeed, target.vspeed);	
	
	fire_cooldown--;	
	if (fire_cooldown <= 0) {
		instance_create_layer(x, y, "Instances", obj_bullet, {
			speed: bullet_speed, direction: fire_direction
		});
		fire_cooldown = fire_rate;
	}
} else {
	fire_cooldown = fire_rate;
}