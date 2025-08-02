/// @description Charge up, fire

if (charging_fire) {
	charge_fire_count = charge_fire_count + 1;
	if (charge_fire_count >= fire_interval) {
		instance_create_layer(x, y, "Instances", obj_spark, {
			speed: bullet_speed,
			direction: direction,
			damage: bullet_damage
		});
		charging_fire = false;
	}
}