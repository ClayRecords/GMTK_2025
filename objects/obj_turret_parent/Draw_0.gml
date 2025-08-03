/// @description Point at target

image_angle = fire_direction + 90;
draw_stacked_sprite(self);

if (global.debug) {
	draw_circle(x, y, fire_range, true);
}