/// @description Draw inventory, debug stats

draw_set_font(global.default_font);
draw_set_colour(global.default_text_color);
draw_set_halign(fa_left);

if (global.debug) {
	draw_text(x + 30, y + 100, "Debug mode");
	draw_text(x + 30, y + 150, "Train x: " + string(obj_train.x));
	draw_text(x + 30, y + 200, "Train y: "+ string(obj_train.y));
	draw_text(x + 30, y + 250, "Train Speed: "+ string(obj_train.path_speed));
}