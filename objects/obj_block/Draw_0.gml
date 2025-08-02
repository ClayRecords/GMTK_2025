if (!active) {
    draw_set_alpha(0.5);
    draw_sprite(spr_block, 0, x, y);
    draw_set_alpha(1);
} else {
    draw_sprite(spr_block, 0, x, y);
	if (self.health != self.max_health) {
		var health_x_off = 10;
		var health_y_off = 2;
		var color = make_colour_rgb(111, 255, 0)
		draw_healthbar(
			x - health_x_off, y + health_y_off,
			x + health_x_off, y - health_y_off,
			self.health/self.max_health * 100,
			c_gray, color, color, 0, true, true
		);
	}
}