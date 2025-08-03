// @description Draw health bar
event_inherited();
draw_stacked_sprite(self)

if (self.current_health != self.max_health) {
	var health_x_off = 50;
	var health_y_off = 10;
	var color = make_colour_rgb(111, 255, 0);
	draw_healthbar(
		x - health_x_off, y + health_y_off + 30,
		x + health_x_off, y - health_y_off + 30,
		self.current_health/self.max_health * 100,
		c_gray, color, color, 0, true, true
	);
}
