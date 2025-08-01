/// @description Draw self and health bar
draw_self();

if (obj_game_manager.debug) {
	
}

// Draw health bar
if (self.current_health != self.max_health) {
	var health_x_off = 10;
	var health_y_off = 2;
	var color = make_colour_rgb(111, 255, 0);
	draw_healthbar(
		x - health_x_off, y + health_y_off,
		x + health_x_off, y - health_y_off,
		self.current_health/self.max_health * 100,
		c_gray, color, color, 0, true, true
	);
}