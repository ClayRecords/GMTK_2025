/// @description Draw cents
draw_set_font(fnt_ui);
draw_set_colour(c_blue);
draw_set_halign(fa_left);

draw_text(x + 30, y + 25, "Cents:  " + str(cents) + "©");
draw_text(x + 30, y + 55, "Imagination: " + str(imagination));


if (debug) {
	draw_text(room_width - 20, 20, "*");
}