/// @description Sprite stacking, charge spark

draw_stacked_sprite(self);

if (charging_fire) {
	if (charge_fire_count % charge_file_rotation_rate == 0) {
		 charge_fire_rotation = random(360);
	}
	var scale = charge_fire_count / 200;
	draw_sprite_ext(spr_spark, 0, x, y, scale, scale, charge_fire_rotation, c_white, 1);
}