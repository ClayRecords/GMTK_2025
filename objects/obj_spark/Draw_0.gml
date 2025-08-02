/// @description Draw and rotate

draw_self();

if (life_count % rotation_rate == 0) {
	image_angle = random(360);
}